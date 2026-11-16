import 'dart:convert';
import 'dart:io';
import 'package:antlr4/antlr4.dart';

import 'PrimaveraParser.dart'; //parser gerado pelo antlr4
import 'SemanticVisitor.dart'; //visitor semantico

void main(List<String> args) async {
  final tsvFile = File('tokens.tsv');
  if (!tsvFile.existsSync()) {
    print('Erro: O arquivo tokens.tsv não foi encontrado.');
    exit(1);
  } //verifica se o arquivo de tokens existe

  // 1. Mapeamento do vocabulário da gramática Primavera

  //cria um parser vazio para obter o vocabulario (estatico)
  final dummyParser = PrimaveraParser(CommonTokenStream(ListTokenSource([])));
  //tabela int <-> nome do ANTLR
  final vocabulary = dummyParser.vocabulary;

  final Map<String, int> tokenTypeMap = {};
  for (int i = 1; i <= vocabulary.maxTokenType; i++) {
    //percorre todos os tipos do vocabulario
    final name = vocabulary.getSymbolicName(i); //recupera nome simbolico
    if (name != null) {
      tokenTypeMap[name] = i;
    } //cria dicionario symbolic name : i
  }

  // 2. Leitura dos tokens a partir do arquivo TSV
  final lines = tsvFile.readAsLinesSync(); //le e divide as linhas por \n
  final List<Token> tokenList = [];

  for (final line in lines) {
    if (line.trim().isEmpty) continue; //ignora linhas em branco

    final parts = line.split('\t'); //divide cada linha pelo separador
    final tipoStr = parts[0]; //extrai tipo simbolico
    final linha = int.parse(parts[1]); //converte linha para um numero
    final coluna = int.parse(parts[2]); //converte coluna para um numero
    final valor = utf8.decode(
        base64.decode(parts[3])); //decodifica o lexema de Base64 para UTF-8

    final tokenType = tokenTypeMap[
        tipoStr]; //tipo do token e extraido do map de tokens da gramatica
    if (tokenType == null) {
      print('Tipo de token desconhecido: $tipoStr');
      exit(1); //aborta caso leia um token desconhecido
    }

    final token = CommonToken(tokenType) //cria token com o tipo numerico
      ..text = valor //armazena valor do token
      ..line = linha //armazena a linha do token
      ..charPositionInLine =
          coluna - 1; //antlr usa colunas 0-based, lexer devolve 1-based

    tokenList.add(token); //adiciona token a lista de tokens
  }

  // Adiciona o token EOF
  // EOF marca o fim de stream
  final eofToken = CommonToken(Token.EOF)
    ..text = '<EOF>'; //texto somente para descricao
  tokenList.add(eofToken);

  // 3. Alimenta o Parser
  //adapta a list<tokens> ao tokensource
  final tokenSource = ListTokenSource(tokenList);
  //posiciona o cursor no primeiro token
  tokenSource.i = 0;

  final tokenStream = CommonTokenStream(tokenSource);
  final parser = PrimaveraParser(tokenStream);

  // 4. Gera a árvore sintática
  final tree = parser.program();

  // 5. Executa o Visitor Semântico
  final visitor = SemanticVisitor();
  visitor.visit(tree);

  // 6. Monta o conteúdo de saída para o arquivo
  final buffer = StringBuffer();

  buffer.writeln("ÁRVORE DE SINTAXE (AST)");
  buffer.writeln(tree.toStringTree(
      parser:
          parser)); //escreve arvore em formato lisp, usando o vocabulary do parser pra nomes simbolicos
  buffer.writeln("\n");

  buffer.writeln("TABELA DE SÍMBOLOS");
  buffer.write(visitor.tabela.dump()); //escreve tabela de simbolos
  buffer.writeln("\n");

  buffer.writeln("RESULTADO SEMÂNTICO");
  if (!visitor.comErros) {
    buffer.writeln("Análise semântica concluída sem erros!");
  } else {
    buffer.writeln("Análise semântica finalizada com erros.");
  }

  // 7. Salva a saída no arquivo 'relatorio_saida.txt'
  final outputFile = File('relatorio_saida.txt');
  await outputFile.writeAsString(buffer.toString());

  print('Análise concluída. Relatório salvo em: ${outputFile.path}');
}
