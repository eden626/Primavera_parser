// Generated from Primavera.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'PrimaveraParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [PrimaveraParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class PrimaveraVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [PrimaveraParser.program].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitProgram(ProgramContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.initialStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitInitialStatement(InitialStatementContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitStatement(StatementContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.varDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitVarDecl(VarDeclContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.type].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitType(TypeContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.funDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFunDecl(FunDeclContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBlock(BlockContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.returnStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitReturnStmt(ReturnStmtContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.loopStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLoopStmt(LoopStmtContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.paramList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParamList(ParamListContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.param].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParam(ParamContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.exprStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExprStmt(ExprStmtContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.ifStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIfStmt(IfStmtContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.whileStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWhileStmt(WhileStmtContext ctx);

  /// Visit a parse tree produced by [PrimaveraParser.printStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPrintStmt(PrintStmtContext ctx);

  /// Visit a parse tree produced by the {@code identifier}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIdentifier(IdentifierContext ctx);

  /// Visit a parse tree produced by the {@code logicalNot}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLogicalNot(LogicalNotContext ctx);

  /// Visit a parse tree produced by the {@code parens}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParens(ParensContext ctx);

  /// Visit a parse tree produced by the {@code comparison}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparison(ComparisonContext ctx);

  /// Visit a parse tree produced by the {@code assignment}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAssignment(AssignmentContext ctx);

  /// Visit a parse tree produced by the {@code realLiteral}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitRealLiteral(RealLiteralContext ctx);

  /// Visit a parse tree produced by the {@code logicalAnd}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLogicalAnd(LogicalAndContext ctx);

  /// Visit a parse tree produced by the {@code multiplicative}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMultiplicative(MultiplicativeContext ctx);

  /// Visit a parse tree produced by the {@code boolLiteral}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBoolLiteral(BoolLiteralContext ctx);

  /// Visit a parse tree produced by the {@code additive}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAdditive(AdditiveContext ctx);

  /// Visit a parse tree produced by the {@code integerLiteral}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIntegerLiteral(IntegerLiteralContext ctx);

  /// Visit a parse tree produced by the {@code funcCall}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFuncCall(FuncCallContext ctx);

  /// Visit a parse tree produced by the {@code logicalOr}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLogicalOr(LogicalOrContext ctx);

  /// Visit a parse tree produced by the {@code equality}
  /// labeled alternative in {@link PrimaveraParser#expr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitEquality(EqualityContext ctx);
}