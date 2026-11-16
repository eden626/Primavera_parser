// Generated from Primavera.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'PrimaveraParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [PrimaveraParser].
abstract class PrimaveraListener extends ParseTreeListener {
  /// Enter a parse tree produced by [PrimaveraParser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.initialStatement].
  /// [ctx] the parse tree
  void enterInitialStatement(InitialStatementContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.initialStatement].
  /// [ctx] the parse tree
  void exitInitialStatement(InitialStatementContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.varDecl].
  /// [ctx] the parse tree
  void enterVarDecl(VarDeclContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.varDecl].
  /// [ctx] the parse tree
  void exitVarDecl(VarDeclContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.funDecl].
  /// [ctx] the parse tree
  void enterFunDecl(FunDeclContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.funDecl].
  /// [ctx] the parse tree
  void exitFunDecl(FunDeclContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.returnStmt].
  /// [ctx] the parse tree
  void enterReturnStmt(ReturnStmtContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.returnStmt].
  /// [ctx] the parse tree
  void exitReturnStmt(ReturnStmtContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.loopStmt].
  /// [ctx] the parse tree
  void enterLoopStmt(LoopStmtContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.loopStmt].
  /// [ctx] the parse tree
  void exitLoopStmt(LoopStmtContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.paramList].
  /// [ctx] the parse tree
  void enterParamList(ParamListContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.paramList].
  /// [ctx] the parse tree
  void exitParamList(ParamListContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.param].
  /// [ctx] the parse tree
  void enterParam(ParamContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.param].
  /// [ctx] the parse tree
  void exitParam(ParamContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.exprStmt].
  /// [ctx] the parse tree
  void enterExprStmt(ExprStmtContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.exprStmt].
  /// [ctx] the parse tree
  void exitExprStmt(ExprStmtContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.ifStmt].
  /// [ctx] the parse tree
  void enterIfStmt(IfStmtContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.ifStmt].
  /// [ctx] the parse tree
  void exitIfStmt(IfStmtContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.whileStmt].
  /// [ctx] the parse tree
  void enterWhileStmt(WhileStmtContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.whileStmt].
  /// [ctx] the parse tree
  void exitWhileStmt(WhileStmtContext ctx);

  /// Enter a parse tree produced by [PrimaveraParser.printStmt].
  /// [ctx] the parse tree
  void enterPrintStmt(PrintStmtContext ctx);
  /// Exit a parse tree produced by [PrimaveraParser.printStmt].
  /// [ctx] the parse tree
  void exitPrintStmt(PrintStmtContext ctx);

  /// Enter a parse tree produced by the [identifier]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterIdentifier(IdentifierContext ctx);
  /// Exit a parse tree produced by the [identifier]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitIdentifier(IdentifierContext ctx);

  /// Enter a parse tree produced by the [logicalNot]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterLogicalNot(LogicalNotContext ctx);
  /// Exit a parse tree produced by the [logicalNot]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitLogicalNot(LogicalNotContext ctx);

  /// Enter a parse tree produced by the [parens]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterParens(ParensContext ctx);
  /// Exit a parse tree produced by the [parens]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitParens(ParensContext ctx);

  /// Enter a parse tree produced by the [comparison]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterComparison(ComparisonContext ctx);
  /// Exit a parse tree produced by the [comparison]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitComparison(ComparisonContext ctx);

  /// Enter a parse tree produced by the [assignment]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by the [assignment]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by the [realLiteral]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterRealLiteral(RealLiteralContext ctx);
  /// Exit a parse tree produced by the [realLiteral]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitRealLiteral(RealLiteralContext ctx);

  /// Enter a parse tree produced by the [logicalAnd]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterLogicalAnd(LogicalAndContext ctx);
  /// Exit a parse tree produced by the [logicalAnd]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitLogicalAnd(LogicalAndContext ctx);

  /// Enter a parse tree produced by the [multiplicative]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterMultiplicative(MultiplicativeContext ctx);
  /// Exit a parse tree produced by the [multiplicative]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitMultiplicative(MultiplicativeContext ctx);

  /// Enter a parse tree produced by the [boolLiteral]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterBoolLiteral(BoolLiteralContext ctx);
  /// Exit a parse tree produced by the [boolLiteral]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitBoolLiteral(BoolLiteralContext ctx);

  /// Enter a parse tree produced by the [additive]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterAdditive(AdditiveContext ctx);
  /// Exit a parse tree produced by the [additive]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitAdditive(AdditiveContext ctx);

  /// Enter a parse tree produced by the [integerLiteral]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterIntegerLiteral(IntegerLiteralContext ctx);
  /// Exit a parse tree produced by the [integerLiteral]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitIntegerLiteral(IntegerLiteralContext ctx);

  /// Enter a parse tree produced by the [funcCall]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterFuncCall(FuncCallContext ctx);
  /// Exit a parse tree produced by the [funcCall]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitFuncCall(FuncCallContext ctx);

  /// Enter a parse tree produced by the [logicalOr]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterLogicalOr(LogicalOrContext ctx);
  /// Exit a parse tree produced by the [logicalOr]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitLogicalOr(LogicalOrContext ctx);

  /// Enter a parse tree produced by the [equality]
  /// labeled alternative in [file.parserName>.expr].
  /// [ctx] the parse tree
  void enterEquality(EqualityContext ctx);
  /// Exit a parse tree produced by the [equality]
  /// labeled alternative in [PrimaveraParser.expr].
  /// [ctx] the parse tree
  void exitEquality(EqualityContext ctx);
}