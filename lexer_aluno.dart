/*
 * Uso:
 *   dart lexer_aluno.dart [arquivo]
 *
 * Estrutura espelhada em lexer_aluno.py / lexer_aluno.c:
 *   1. Token
 *   2. AFD (tabela de transições)
 *   3. Configuração da linguagem
 *   4. Construtores genéricos (literal, trie)
 *   5. Construtores específicos (ID, NUM)
 *   6. Lexer
 *   7. Programa principal
 */

import 'dart:io';
import 'dart:convert';

/* =====================================================================
 * 1. TOKEN
 * ===================================================================== */

class Token {
  final String tipo;
  final String valor;
  final int linha;
  final int coluna;

  Token(this.tipo, this.valor, this.linha, this.coluna);

  @override
  String toString() => "<$tipo, '$valor'> @ $linha:$coluna";
}

/* =====================================================================
 * 2. AFD — tabela de transições
 *    transicoes[estado][caractere] = próximo estado
 * ===================================================================== */

class AFD {
  final String nome;
  final Map<int, Map<String, int>> transicoes = {};
  final Set<int> finais = {};
  int inicial = 0;
  int _prox = 1;

  AFD(this.nome);

  int novoEstado() {
    final e = _prox;
    _prox++;
    return e;
  }

  /// Registra transição para CADA caractere em `simbolos`.
  void transicao(int origem, String simbolos, int destino) {
    final mapa = transicoes.putIfAbsent(origem, () => <String, int>{});
    for (int i = 0; i < simbolos.length; i++) {
      mapa[simbolos[i]] = destino;
    }
  }

  void marcarFinal(int estado) {
    finais.add(estado);
  }

  /// Retorna o comprimento do MAIOR prefixo de `texto` aceito pelo AFD,
  /// ou -1 se nenhum prefixo for aceito.
  int maiorPrefixo(String texto) {
    int estado = inicial;
    int ultimo = finais.contains(estado) ? 0 : -1;
    for (int i = 0; i < texto.length; i++) {
      final mapa = transicoes[estado];
      if (mapa == null) break;
      final prox = mapa[texto[i]];
      if (prox == null) break;
      estado = prox;
      if (finais.contains(estado)) ultimo = i + 1;
    }
    return ultimo;
  }
}

/* =====================================================================
 * 3. CONFIGURAÇÃO DA LINGUAGEM
 * ---------------------------------------------------------------------
 * Edite APENAS esta seção para adaptar o lexer à sua linguagem.
 * ===================================================================== */

const String LETRAS_ID = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
const String INICIAIS_ID = LETRAS_ID + "_";
const String CONTINUACAO_ID = LETRAS_ID + "0123456789_";
const String DIGITOS = "0123456789";

const Map<String, String> PALAVRAS_RESERVADAS = {
  "se": "KW_IF",
  "altrimenti": "KW_ELSE",
  "finche": "KW_WHILE",
  "restituire": "KW_RETURN",
  "ciclo": "KW_LOOP",
  "num": "TP_NUM",
  "bool": "TP_BOOL",
  "def": "KW_DEF",
  "funzione": "KW_FUNC",
  "mostrare": "KW_PRINT",
  "Falso": "BOOL_FALSE",
  "Vero": "BOOL_TRUE",
};

const Map<String, String> OPERADORES = {
  "==": "EQ_OP",
  "!=": "NEQ_OP",
  "<=": "LEQ_OP",
  ">=": "GEQ_OP",
  "=": "ATTR",
  "<": "LT_OP",
  ">": "GT_OP",
  "&&": "AND_OP",
  "||": "OR_OP",
  "!": "NON_OP",
  "+": "SUM_OP",
  "-": "SUB_OP",
  "*": "MULT_OP",
  "/": "DIV_OP",
  "%": "MOD_OP",
};

const Map<String, String> SIMBOLOS = {
  "(": "L_PAR",
  ")": "R_PAR",
  "{": "L_BRACE",
  "}": "R_BRACE",
  ";": "PUNTO_VIRGOLA",
  ",": "VIRGOLA",
};

/// Tabela combinada (operadores + símbolos).
final Map<String, String> FIXOS = {...OPERADORES, ...SIMBOLOS};

/* =====================================================================
 * 4. CONSTRUTORES GENÉRICOS DE AFDs
 * ===================================================================== */

/// AFD que reconhece EXATAMENTE a string `texto`.
AFD afdLiteral(String nome, String texto) {
  final afd = AFD(nome);
  int atual = afd.inicial;
  for (int i = 0; i < texto.length; i++) {
    final prox = afd.novoEstado();
    afd.transicao(atual, texto[i], prox);
    atual = prox;
  }
  afd.marcarFinal(atual);
  return afd;
}

/// AFD-trie reconhecendo QUALQUER uma das strings em `textos`.
AFD afdConjuntoLiterais(String nome, List<String> textos) {
  final afd = AFD(nome);
  for (final texto in textos) {
    int atual = afd.inicial;
    for (int i = 0; i < texto.length; i++) {
      final c = texto[i];
      final mapa = afd.transicoes[atual];
      int? prox = mapa?[c];
      if (prox == null) {
        prox = afd.novoEstado();
        afd.transicao(atual, c, prox);
      }
      atual = prox;
    }
    afd.marcarFinal(atual);
  }
  return afd;
}

/* =====================================================================
 * 5. CONSTRUTORES ESPECÍFICOS — ID e NUM
 * ===================================================================== */

/// [INICIAIS_ID][CONTINUACAO_ID]* -> tipo ID
AFD afdIdentificador() {
  final afd = AFD("ID");
  final q1 = afd.novoEstado();
  afd.transicao(afd.inicial, INICIAIS_ID, q1);
  afd.transicao(q1, CONTINUACAO_ID, q1);
  afd.marcarFinal(q1);
  return afd;
}

/// [DIGITOS]+ -> tipo INT
AFD afdNumero() {
  final afd = AFD("INT");
  final q1 = afd.novoEstado();
  afd.transicao(afd.inicial, DIGITOS, q1);
  afd.transicao(q1, DIGITOS, q1);
  afd.marcarFinal(q1);
  return afd;
}

/// [DIGITOS]+.[DIGITOS]+ -> tipo REAL
AFD afdReal() {
  final afd = AFD("REAL");

  final qInt = afd.novoEstado();
  final qPonto = afd.novoEstado();
  final qFrac = afd.novoEstado();

  afd.transicao(afd.inicial, DIGITOS, qInt);
  afd.transicao(qInt, DIGITOS, qInt);

  afd.transicao(qInt, ".", qPonto);

  afd.transicao(qPonto, DIGITOS, qFrac);
  afd.transicao(qFrac, DIGITOS, qFrac);
  afd.marcarFinal(qFrac);

  return afd;
}

/* =====================================================================
 * 6. LEXER
 * ===================================================================== */

class Regra {
  final String tipo;
  final AFD afd;
  Regra(this.tipo, this.afd);
}

class Lexer {
  final String entrada;
  final List<Regra> regras;
  int pos = 0;
  int linha = 1;
  int coluna = 1;

  Lexer(this.entrada, this.regras);

  void _avancar(int n) {
    for (int i = 0; i < n; i++) {
      if (pos >= entrada.length) return;
      if (entrada[pos] == "\n") {
        linha++;
        coluna = 1;
      } else {
        coluna++;
      }
      pos++;
    }
  }

  String _reclassificar(String tipo, String valor) {
    if (tipo == "ID" && PALAVRAS_RESERVADAS.containsKey(valor)) {
      return PALAVRAS_RESERVADAS[valor]!;
    }
    if (tipo == "FIXO") {
      return FIXOS[valor] ?? tipo;
    }
    return tipo;
  }

  Token? proximoToken() {
    // 1) pular espaços em branco
    while (pos < entrada.length &&
        (entrada[pos] == ' ' ||
            entrada[pos] == '\t' ||
            entrada[pos] == '\r' ||
            entrada[pos] == '\n')) {
      _avancar(1);
    }
    if (pos >= entrada.length) return null;

    final l = linha;
    final c = coluna;
    final resto = entrada.substring(pos);

    // 2) maior prefixo entre todas as regras
    String? melhorTipo;
    int melhorTam = 0;
    for (final regra in regras) {
      final tam = regra.afd.maiorPrefixo(resto);
      if (tam > melhorTam) {
        melhorTam = tam;
        melhorTipo = regra.tipo;
      }
    }

    if (melhorTam == 0) {
      stderr.writeln("Caractere inesperado '${resto[0]}' em L$l:C$c");
      exit(1);
    }

    final valor = resto.substring(0, melhorTam);
    _avancar(melhorTam);

    // 3) reclassificação
    final tipoFinal = _reclassificar(melhorTipo!, valor);

    return Token(tipoFinal, valor, l, c);
  }

  List<Token> tokenizar() {
    final tokens = <Token>[];
    Token? t;
    while ((t = proximoToken()) != null) {
      tokens.add(t!);
    }
    return tokens;
  }
}

/* =====================================================================
 * 7. PROGRAMA PRINCIPAL
 * ===================================================================== */

List<Regra> construirRegras() {
  final fixosOrdenados = FIXOS.keys.toList()..sort();
  return [
    Regra("ID", afdIdentificador()),
    Regra("INT", afdNumero()),
    Regra("REAL", afdReal()),
    Regra("FIXO", afdConjuntoLiterais("FIXO", fixosOrdenados)),
  ];
}

void main(List<String> args) {
  if (args.isEmpty) {
    stderr.writeln('Uso: dart lexer_aluno.dart arquivo_fonte');
    exit(1);
  }

  final codigo = File(args[0]).readAsStringSync();

  final tokens = Lexer(codigo, construirRegras()).tokenizar();

  final saida = StringBuffer();

  for (final tok in tokens) {
    final textoBase64 = base64Encode(utf8.encode(tok.valor));

    saida.writeln('${tok.tipo}\t${tok.linha}\t${tok.coluna}\t$textoBase64');
  }

  File('tokens.tsv').writeAsStringSync(saida.toString());

  print('${tokens.length} tokens gravados em tokens.tsv');
}
