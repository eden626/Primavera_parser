// Generated from Primavera.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'PrimaveraParser.dart';
import 'PrimaveraVisitor.dart';

/// This class provides an empty implementation of [PrimaveraVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class PrimaveraBaseVisitor<T> extends ParseTreeVisitor<T> implements PrimaveraVisitor<T> {
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitProgram(ProgramContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitInitialStatement(InitialStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitStatement(StatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitVarDecl(VarDeclContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitType(TypeContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitFunDecl(FunDeclContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBlock(BlockContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitReturnStmt(ReturnStmtContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLoopStmt(LoopStmtContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParamList(ParamListContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParam(ParamContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitExprStmt(ExprStmtContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitIfStmt(IfStmtContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitWhileStmt(WhileStmtContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPrintStmt(PrintStmtContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitIdentifier(IdentifierContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLogicalNot(LogicalNotContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParens(ParensContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitComparison(ComparisonContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAssignment(AssignmentContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitRealLiteral(RealLiteralContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLogicalAnd(LogicalAndContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMultiplicative(MultiplicativeContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBoolLiteral(BoolLiteralContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAdditive(AdditiveContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitIntegerLiteral(IntegerLiteralContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitFuncCall(FuncCallContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLogicalOr(LogicalOrContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitEquality(EqualityContext ctx) => visitChildren(ctx);
}