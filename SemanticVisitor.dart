import 'PrimaveraParser.dart';
import 'PrimaveraBaseVisitor.dart';
import 'TabelaDeSimbolos.dart';

class SemanticVisitor extends PrimaveraBaseVisitor<String?> {
  final TabelaDeSimbolos tabela = TabelaDeSimbolos();
  bool comErros = false;

  void _erro(int? linha, String mensagem) {
    print("Erro Semântico [Linha ${linha ?? '?'}]: $mensagem");
    comErros = true;
  }

  // 1. DECLARAÇÕES E ESCOPOS

  @override
  String? visitVarDecl(VarDeclContext ctx) {
    final tipoDeclarado = ctx.type()!.text;
    final idToken = ctx.ID()!.symbol;
    final nome = idToken.text!;
    final linha = idToken.line;

    String? tipoExpr;
    if (ctx.expr() != null) {
      tipoExpr =
          visit(ctx.expr()!); //visita a expressao da variavel e guarda o tipo
    }

    if (!tabela.adicionar(nome, tipoDeclarado)) {
      //verifica se a var esta na tabela
      _erro(linha, "A variável '$nome' já foi declarada neste escopo.");
      return null;
    }

    if (tipoExpr != null && tipoExpr != tipoDeclarado) {
      //verifica se o tipo da expressao e igual ao tipo declarado
      _erro(linha,
          "Incompatibilidade de tipos na declaração de '$nome': esperado '$tipoDeclarado', mas recebeu '$tipoExpr'.");
    }

    return null; //declaracao de variavel e comando, nn expressao
  }

  @override
  String? visitFunDecl(FunDeclContext ctx) {
    final idToken = ctx.ID()!.symbol;
    final nomeFuncao = idToken.text!;
    final linha = idToken.line;

    if (!tabela.adicionar(nomeFuncao, 'funzione')) {
      _erro(linha,
          "A função '$nomeFuncao' já foi declarada."); //checa se funcao ja foi declarada
    }

    tabela.entrarEscopo(); //enter new scope

    if (ctx.paramList() != null) {
      visit(ctx.paramList()!); //visits parameters
    }

    final comandos = ctx.block()?.statements() ?? [];
    for (final stmt in comandos) {
      //visits each statement on the block
      visit(stmt);
    }

    tabela.sairEscopo(); //exits scope
    return null;
  }

  @override
  String? visitParam(ParamContext ctx) {
    final tipo = ctx.type()!.text;
    final idToken = ctx.ID()!.symbol;
    final nome = idToken.text!;
    final linha = idToken.line;

    if (!tabela.adicionar(nome, tipo)) {
      _erro(linha, "Parâmetro duplicado '$nome'.");
    }
    return null;
  }

  @override
  String? visitBlock(BlockContext ctx) {
    tabela.entrarEscopo();
    visitChildren(ctx);
    tabela.sairEscopo();
    return null;
  }

  // 2. ESTRUTURAS DE CONTROLE

  @override
  String? visitIfStmt(IfStmtContext ctx) {
    final tipoCondicao =
        visit(ctx.expr()!); //visita expressao para descobrir o tipo
    final linha = ctx.KW_IF()!.symbol.line;

    if (tipoCondicao != null && tipoCondicao != 'bool') {
      _erro(linha,
          "A condição do 'se' deve ser do tipo 'bool', mas recebeu '$tipoCondicao'.");
    }

    for (final stmt in ctx.statements()) {
      //percorre os comandos no bloco do se
      visit(stmt);
    }
    return null;
  }

  @override
  String? visitWhileStmt(WhileStmtContext ctx) {
    final tipoCondicao = visit(ctx.expr()!);
    final linha = ctx.KW_WHILE()!.symbol.line;

    if (tipoCondicao != null && tipoCondicao != 'bool') {
      _erro(linha,
          "A condição do 'finche' deve ser do tipo 'bool', mas recebeu '$tipoCondicao'.");
    }

    visit(ctx.statement()!);
    return null;
  }

  // 3. EXPRESSÕES E OPERADORES

  @override
  String? visitAssignment(AssignmentContext ctx) {
    final idToken = ctx.ID()!.symbol;
    final nome = idToken.text!;
    final linha = idToken.line;
    final tipoExpr = visit(ctx.expr()!);

    final tipoVar = tabela.getTipo(nome);

    if (tipoVar == null) {
      //tipo da variavel == null -> variavel nn declarada
      _erro(linha,
          "A variável '$nome' foi usada na atribuição sem ter sido declarada.");
      return null;
    }

    if (tipoExpr != null && tipoVar != tipoExpr) {
      //tipo da variavel diferente do tipo da expr
      _erro(linha,
          "Não é possível atribuir '$tipoExpr' à variável '$nome' do tipo '$tipoVar'.");
      return null;
    }

    return tipoVar; //permite a = b = 10
  }

  @override
  String? visitAdditive(AdditiveContext ctx) {
    final esq = visit(ctx.expr(0)!); //obtem tipo da expr a esq
    final dir = visit(ctx.expr(1)!); //obtem tipo da exp a dir
    if (esq == null || dir == null)
      return null; //se algum estiver errado, propaga null

    if (esq != 'num' || dir != 'num') {
      _erro(ctx.start?.line,
          "Operadores '+' e '-' exigem operandos do tipo 'num' (recebeu '$esq' e '$dir').");
      return null;
    }
    return 'num';
  }

  @override
  String? visitMultiplicative(MultiplicativeContext ctx) {
    final esq = visit(ctx.expr(0)!);
    final dir = visit(ctx.expr(1)!);
    if (esq == null || dir == null) return null;

    if (esq != 'num' || dir != 'num') {
      _erro(ctx.start?.line,
          "Operadores '*', '/' e '%' exigem operandos do tipo 'num' (recebeu '$esq' e '$dir').");
      return null;
    }
    return 'num';
  }

  @override
  String? visitComparison(ComparisonContext ctx) {
    final esq = visit(ctx.expr(0)!);
    final dir = visit(ctx.expr(1)!);
    if (esq == null || dir == null) return null;

    if (esq != 'num' || dir != 'num') {
      _erro(ctx.start?.line,
          "Operadores de comparação ('<', '>', '<=', '>=') exigem 'num' (recebeu '$esq' e '$dir').");
      return null;
    }
    return 'bool'; //permite que o resultado seja usado dentro de um se
  }

  @override
  String? visitEquality(EqualityContext ctx) {
    final esq = visit(ctx.expr(0)!);
    final dir = visit(ctx.expr(1)!);
    if (esq == null || dir == null) return null;

    if (esq != dir) {
      _erro(ctx.start?.line,
          "Operadores '==' e '!=' exigem tipos iguais (recebeu '$esq' e '$dir').");
      return null;
    }
    return 'bool';
  }

  @override
  String? visitLogicalAnd(LogicalAndContext ctx) {
    final esq = visit(ctx.expr(0)!);
    final dir = visit(ctx.expr(1)!);
    if (esq == null || dir == null) return null;

    if (esq != 'bool' || dir != 'bool') {
      _erro(ctx.start?.line,
          "O operador '&&' exige operandos do tipo 'bool' (recebeu '$esq' e '$dir').");
      return null;
    }
    return 'bool';
  }

  @override
  String? visitLogicalOr(LogicalOrContext ctx) {
    final esq = visit(ctx.expr(0)!);
    final dir = visit(ctx.expr(1)!);
    if (esq == null || dir == null) return null;

    if (esq != 'bool' || dir != 'bool') {
      _erro(ctx.start?.line,
          "O operador '||' exige operandos do tipo 'bool' (recebeu '$esq' e '$dir').");
      return null;
    }
    return 'bool';
  }

  @override
  String? visitLogicalNot(LogicalNotContext ctx) {
    final operando = visit(ctx.expr()!);
    if (operando == null) return null;

    if (operando != 'bool') {
      _erro(ctx.start?.line,
          "O operador '!' exige um operando do tipo 'bool' (recebeu '$operando').");
      return null;
    }
    return 'bool';
  }

  @override
  String? visitParens(ParensContext ctx) {
    return visit(ctx.expr()!); //retorna o tipo da expressao interna
  }

  @override
  String? visitFuncCall(FuncCallContext ctx) {
    final idToken = ctx.ID()!.symbol;
    final nome = idToken.text!;
    final linha = idToken.line;

    if (!tabela.existe(nome)) {
      _erro(linha, "A função '$nome' foi chamada sem ter sido declarada.");
    }

    visitChildren(ctx);
    return null;
  }

  // 4. FOLHAS (IDENTIFICADORES E LITERAIS)

  @override
  String? visitIdentifier(IdentifierContext ctx) {
    final idToken = ctx.ID()!.symbol;
    final nome = idToken.text!;
    final linha = idToken.line;

    final tipo = tabela.getTipo(nome);
    if (tipo == null) {
      _erro(linha, "A variável '$nome' foi usada sem ter sido declarada.");
      return null;
    }
    return tipo;
  }

  @override
  String? visitIntegerLiteral(IntegerLiteralContext ctx) => 'num';

  @override
  String? visitRealLiteral(RealLiteralContext ctx) => 'num';

  @override
  String? visitBoolLiteral(BoolLiteralContext ctx) => 'bool';
}
