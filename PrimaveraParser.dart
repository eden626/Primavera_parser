// Generated from Primavera.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'PrimaveraListener.dart';
import 'PrimaveraBaseListener.dart';
import 'PrimaveraVisitor.dart';
import 'PrimaveraBaseVisitor.dart';
const int RULE_program = 0, RULE_initialStatement = 1, RULE_statement = 2, 
          RULE_varDecl = 3, RULE_type = 4, RULE_funDecl = 5, RULE_block = 6, 
          RULE_returnStmt = 7, RULE_loopStmt = 8, RULE_paramList = 9, RULE_param = 10, 
          RULE_exprStmt = 11, RULE_ifStmt = 12, RULE_whileStmt = 13, RULE_printStmt = 14, 
          RULE_expr = 15;
class PrimaveraParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_TP_NUM = 1, TOKEN_TP_BOOL = 2, TOKEN_KW_IF = 3, 
                   TOKEN_KW_ELSE = 4, TOKEN_KW_DEF = 5, TOKEN_KW_FUNC = 6, 
                   TOKEN_KW_LOOP = 7, TOKEN_KW_WHILE = 8, TOKEN_KW_RETURN = 9, 
                   TOKEN_KW_PRINT = 10, TOKEN_BOOL_TRUE = 11, TOKEN_BOOL_FALSE = 12, 
                   TOKEN_ID = 13, TOKEN_INT = 14, TOKEN_REAL = 15, TOKEN_LEQ_OP = 16, 
                   TOKEN_GEQ_OP = 17, TOKEN_EQ_OP = 18, TOKEN_NEQ_OP = 19, 
                   TOKEN_AND_OP = 20, TOKEN_OR_OP = 21, TOKEN_ATTR = 22, 
                   TOKEN_SUM_OP = 23, TOKEN_SUB_OP = 24, TOKEN_MULT_OP = 25, 
                   TOKEN_DIV_OP = 26, TOKEN_MOD_OP = 27, TOKEN_LT_OP = 28, 
                   TOKEN_GT_OP = 29, TOKEN_NON_OP = 30, TOKEN_L_PAR = 31, 
                   TOKEN_R_PAR = 32, TOKEN_L_BRACE = 33, TOKEN_R_BRACE = 34, 
                   TOKEN_PUNTO_VIRGOLA = 35, TOKEN_VIRGOLA = 36, TOKEN_WS = 37;

  @override
  final List<String> ruleNames = [
    'program', 'initialStatement', 'statement', 'varDecl', 'type', 'funDecl', 
    'block', 'returnStmt', 'loopStmt', 'paramList', 'param', 'exprStmt', 
    'ifStmt', 'whileStmt', 'printStmt', 'expr'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'num'", "'bool'", "'se'", "'altrimenti'", "'def'", "'funzione'", 
      "'ciclo'", "'finche'", "'restituire'", "'mostrare'", "'Vero'", "'Falso'", 
      null, null, null, "'<='", "'>='", "'=='", "'!='", "'&&'", "'||'", 
      "'='", "'+'", "'-'", "'*'", "'/'", "'%'", "'<'", "'>'", "'!'", "'('", 
      "')'", "'{'", "'}'", "';'", "','"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "TP_NUM", "TP_BOOL", "KW_IF", "KW_ELSE", "KW_DEF", "KW_FUNC", 
      "KW_LOOP", "KW_WHILE", "KW_RETURN", "KW_PRINT", "BOOL_TRUE", "BOOL_FALSE", 
      "ID", "INT", "REAL", "LEQ_OP", "GEQ_OP", "EQ_OP", "NEQ_OP", "AND_OP", 
      "OR_OP", "ATTR", "SUM_OP", "SUB_OP", "MULT_OP", "DIV_OP", "MOD_OP", 
      "LT_OP", "GT_OP", "NON_OP", "L_PAR", "R_PAR", "L_BRACE", "R_BRACE", 
      "PUNTO_VIRGOLA", "VIRGOLA", "WS"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'Primavera.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  PrimaveraParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 0, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 35;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 11811225006) != 0)) {
        state = 32;
        initialStatement();
        state = 37;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 38;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InitialStatementContext initialStatement() {
    dynamic _localctx = InitialStatementContext(context, state);
    enterRule(_localctx, 2, RULE_initialStatement);
    try {
      state = 48;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_TP_NUM:
      case TOKEN_TP_BOOL:
        enterOuterAlt(_localctx, 1);
        state = 40;
        varDecl();
        break;
      case TOKEN_KW_DEF:
        enterOuterAlt(_localctx, 2);
        state = 41;
        funDecl();
        break;
      case TOKEN_KW_IF:
        enterOuterAlt(_localctx, 3);
        state = 42;
        ifStmt();
        break;
      case TOKEN_L_BRACE:
        enterOuterAlt(_localctx, 4);
        state = 43;
        block();
        break;
      case TOKEN_BOOL_TRUE:
      case TOKEN_BOOL_FALSE:
      case TOKEN_ID:
      case TOKEN_INT:
      case TOKEN_REAL:
      case TOKEN_NON_OP:
      case TOKEN_L_PAR:
        enterOuterAlt(_localctx, 5);
        state = 44;
        exprStmt();
        break;
      case TOKEN_KW_WHILE:
        enterOuterAlt(_localctx, 6);
        state = 45;
        whileStmt();
        break;
      case TOKEN_KW_LOOP:
        enterOuterAlt(_localctx, 7);
        state = 46;
        loopStmt();
        break;
      case TOKEN_KW_PRINT:
        enterOuterAlt(_localctx, 8);
        state = 47;
        printStmt();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 4, RULE_statement);
    try {
      state = 58;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_TP_NUM:
      case TOKEN_TP_BOOL:
        enterOuterAlt(_localctx, 1);
        state = 50;
        varDecl();
        break;
      case TOKEN_KW_IF:
        enterOuterAlt(_localctx, 2);
        state = 51;
        ifStmt();
        break;
      case TOKEN_L_BRACE:
        enterOuterAlt(_localctx, 3);
        state = 52;
        block();
        break;
      case TOKEN_BOOL_TRUE:
      case TOKEN_BOOL_FALSE:
      case TOKEN_ID:
      case TOKEN_INT:
      case TOKEN_REAL:
      case TOKEN_NON_OP:
      case TOKEN_L_PAR:
        enterOuterAlt(_localctx, 4);
        state = 53;
        exprStmt();
        break;
      case TOKEN_KW_WHILE:
        enterOuterAlt(_localctx, 5);
        state = 54;
        whileStmt();
        break;
      case TOKEN_KW_LOOP:
        enterOuterAlt(_localctx, 6);
        state = 55;
        loopStmt();
        break;
      case TOKEN_KW_PRINT:
        enterOuterAlt(_localctx, 7);
        state = 56;
        printStmt();
        break;
      case TOKEN_KW_RETURN:
        enterOuterAlt(_localctx, 8);
        state = 57;
        returnStmt();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VarDeclContext varDecl() {
    dynamic _localctx = VarDeclContext(context, state);
    enterRule(_localctx, 6, RULE_varDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 60;
      type();
      state = 61;
      match(TOKEN_ID);
      state = 64;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ATTR) {
        state = 62;
        match(TOKEN_ATTR);
        state = 63;
        expr(0);
      }

      state = 66;
      match(TOKEN_PUNTO_VIRGOLA);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 8, RULE_type);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 68;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_TP_NUM || _la == TOKEN_TP_BOOL)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunDeclContext funDecl() {
    dynamic _localctx = FunDeclContext(context, state);
    enterRule(_localctx, 10, RULE_funDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 70;
      match(TOKEN_KW_DEF);
      state = 71;
      match(TOKEN_KW_FUNC);
      state = 72;
      match(TOKEN_ID);
      state = 73;
      match(TOKEN_L_PAR);
      state = 75;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_TP_NUM || _la == TOKEN_TP_BOOL) {
        state = 74;
        paramList();
      }

      state = 77;
      match(TOKEN_R_PAR);
      state = 78;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 12, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 80;
      match(TOKEN_L_BRACE);
      state = 84;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 11811225486) != 0)) {
        state = 81;
        statement();
        state = 86;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 87;
      match(TOKEN_R_BRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ReturnStmtContext returnStmt() {
    dynamic _localctx = ReturnStmtContext(context, state);
    enterRule(_localctx, 14, RULE_returnStmt);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 89;
      match(TOKEN_KW_RETURN);
      state = 91;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3221288960) != 0)) {
        state = 90;
        expr(0);
      }

      state = 93;
      match(TOKEN_PUNTO_VIRGOLA);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LoopStmtContext loopStmt() {
    dynamic _localctx = LoopStmtContext(context, state);
    enterRule(_localctx, 16, RULE_loopStmt);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 95;
      match(TOKEN_KW_LOOP);
      state = 99;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 7, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 96;
          statement(); 
        }
        state = 101;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 7, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParamListContext paramList() {
    dynamic _localctx = ParamListContext(context, state);
    enterRule(_localctx, 18, RULE_paramList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 102;
      param();
      state = 107;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_VIRGOLA) {
        state = 103;
        match(TOKEN_VIRGOLA);
        state = 104;
        param();
        state = 109;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParamContext param() {
    dynamic _localctx = ParamContext(context, state);
    enterRule(_localctx, 20, RULE_param);
    try {
      enterOuterAlt(_localctx, 1);
      state = 110;
      type();
      state = 111;
      match(TOKEN_ID);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExprStmtContext exprStmt() {
    dynamic _localctx = ExprStmtContext(context, state);
    enterRule(_localctx, 22, RULE_exprStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 113;
      expr(0);
      state = 114;
      match(TOKEN_PUNTO_VIRGOLA);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IfStmtContext ifStmt() {
    dynamic _localctx = IfStmtContext(context, state);
    enterRule(_localctx, 24, RULE_ifStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 116;
      match(TOKEN_KW_IF);
      state = 117;
      match(TOKEN_L_PAR);
      state = 118;
      expr(0);
      state = 119;
      match(TOKEN_R_PAR);
      state = 120;
      statement();
      state = 123;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        state = 121;
        match(TOKEN_KW_ELSE);
        state = 122;
        statement();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhileStmtContext whileStmt() {
    dynamic _localctx = WhileStmtContext(context, state);
    enterRule(_localctx, 26, RULE_whileStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 125;
      match(TOKEN_KW_WHILE);
      state = 126;
      match(TOKEN_L_PAR);
      state = 127;
      expr(0);
      state = 128;
      match(TOKEN_R_PAR);
      state = 129;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PrintStmtContext printStmt() {
    dynamic _localctx = PrintStmtContext(context, state);
    enterRule(_localctx, 28, RULE_printStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 131;
      match(TOKEN_KW_PRINT);
      state = 132;
      expr(0);
      state = 133;
      match(TOKEN_PUNTO_VIRGOLA);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExprContext expr([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExprContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 30;
    enterRecursionRule(_localctx, 30, RULE_expr, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 155;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
      case 1:
        _localctx = AssignmentContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 136;
        match(TOKEN_ID);
        state = 137;
        match(TOKEN_ATTR);
        state = 138;
        expr(14);
        break;
      case 2:
        _localctx = FuncCallContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 139;
        match(TOKEN_ID);
        state = 140;
        match(TOKEN_L_PAR);
        state = 142;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_TP_NUM || _la == TOKEN_TP_BOOL) {
          state = 141;
          paramList();
        }

        state = 144;
        match(TOKEN_R_PAR);
        break;
      case 3:
        _localctx = LogicalNotContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 145;
        match(TOKEN_NON_OP);
        state = 146;
        expr(6);
        break;
      case 4:
        _localctx = ParensContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 147;
        match(TOKEN_L_PAR);
        state = 148;
        expr(0);
        state = 149;
        match(TOKEN_R_PAR);
        break;
      case 5:
        _localctx = IdentifierContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 151;
        match(TOKEN_ID);
        break;
      case 6:
        _localctx = IntegerLiteralContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 152;
        match(TOKEN_INT);
        break;
      case 7:
        _localctx = RealLiteralContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 153;
        match(TOKEN_REAL);
        break;
      case 8:
        _localctx = BoolLiteralContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 154;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_BOOL_TRUE || _la == TOKEN_BOOL_FALSE)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 177;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 175;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
          case 1:
            _localctx = LogicalOrContext(new ExprContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expr);
            state = 157;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 158;
            match(TOKEN_OR_OP);
            state = 159;
            expr(13);
            break;
          case 2:
            _localctx = LogicalAndContext(new ExprContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expr);
            state = 160;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 161;
            match(TOKEN_AND_OP);
            state = 162;
            expr(12);
            break;
          case 3:
            _localctx = ComparisonContext(new ExprContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expr);
            state = 163;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 164;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 805502976) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 165;
            expr(11);
            break;
          case 4:
            _localctx = EqualityContext(new ExprContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expr);
            state = 166;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 167;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_EQ_OP || _la == TOKEN_NEQ_OP)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 168;
            expr(10);
            break;
          case 5:
            _localctx = AdditiveContext(new ExprContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expr);
            state = 169;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 170;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_SUM_OP || _la == TOKEN_SUB_OP)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 171;
            expr(9);
            break;
          case 6:
            _localctx = MultiplicativeContext(new ExprContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expr);
            state = 172;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 173;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 234881024) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 174;
            expr(8);
            break;
          } 
        }
        state = 179;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 15:
      return _expr_sempred(_localctx as ExprContext?, predIndex);
    }
    return true;
  }
  bool _expr_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 12);
      case 1: return precpred(context, 11);
      case 2: return precpred(context, 10);
      case 3: return precpred(context, 9);
      case 4: return precpred(context, 8);
      case 5: return precpred(context, 7);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,37,181,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,1,0,5,0,34,8,0,10,0,12,0,37,9,0,1,0,1,0,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,3,1,49,8,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,
      3,2,59,8,2,1,3,1,3,1,3,1,3,3,3,65,8,3,1,3,1,3,1,4,1,4,1,5,1,5,1,5,
      1,5,1,5,3,5,76,8,5,1,5,1,5,1,5,1,6,1,6,5,6,83,8,6,10,6,12,6,86,9,6,
      1,6,1,6,1,7,1,7,3,7,92,8,7,1,7,1,7,1,8,1,8,5,8,98,8,8,10,8,12,8,101,
      9,8,1,9,1,9,1,9,5,9,106,8,9,10,9,12,9,109,9,9,1,10,1,10,1,10,1,11,
      1,11,1,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,124,8,12,1,13,1,
      13,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,15,
      1,15,1,15,3,15,143,8,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,
      15,1,15,1,15,3,15,156,8,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,
      1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,5,15,176,8,15,10,
      15,12,15,179,9,15,1,15,0,1,30,16,0,2,4,6,8,10,12,14,16,18,20,22,24,
      26,28,30,0,6,1,0,1,2,1,0,11,12,2,0,16,17,28,29,1,0,18,19,1,0,23,24,
      1,0,25,27,200,0,35,1,0,0,0,2,48,1,0,0,0,4,58,1,0,0,0,6,60,1,0,0,0,
      8,68,1,0,0,0,10,70,1,0,0,0,12,80,1,0,0,0,14,89,1,0,0,0,16,95,1,0,0,
      0,18,102,1,0,0,0,20,110,1,0,0,0,22,113,1,0,0,0,24,116,1,0,0,0,26,125,
      1,0,0,0,28,131,1,0,0,0,30,155,1,0,0,0,32,34,3,2,1,0,33,32,1,0,0,0,
      34,37,1,0,0,0,35,33,1,0,0,0,35,36,1,0,0,0,36,38,1,0,0,0,37,35,1,0,
      0,0,38,39,5,0,0,1,39,1,1,0,0,0,40,49,3,6,3,0,41,49,3,10,5,0,42,49,
      3,24,12,0,43,49,3,12,6,0,44,49,3,22,11,0,45,49,3,26,13,0,46,49,3,16,
      8,0,47,49,3,28,14,0,48,40,1,0,0,0,48,41,1,0,0,0,48,42,1,0,0,0,48,43,
      1,0,0,0,48,44,1,0,0,0,48,45,1,0,0,0,48,46,1,0,0,0,48,47,1,0,0,0,49,
      3,1,0,0,0,50,59,3,6,3,0,51,59,3,24,12,0,52,59,3,12,6,0,53,59,3,22,
      11,0,54,59,3,26,13,0,55,59,3,16,8,0,56,59,3,28,14,0,57,59,3,14,7,0,
      58,50,1,0,0,0,58,51,1,0,0,0,58,52,1,0,0,0,58,53,1,0,0,0,58,54,1,0,
      0,0,58,55,1,0,0,0,58,56,1,0,0,0,58,57,1,0,0,0,59,5,1,0,0,0,60,61,3,
      8,4,0,61,64,5,13,0,0,62,63,5,22,0,0,63,65,3,30,15,0,64,62,1,0,0,0,
      64,65,1,0,0,0,65,66,1,0,0,0,66,67,5,35,0,0,67,7,1,0,0,0,68,69,7,0,
      0,0,69,9,1,0,0,0,70,71,5,5,0,0,71,72,5,6,0,0,72,73,5,13,0,0,73,75,
      5,31,0,0,74,76,3,18,9,0,75,74,1,0,0,0,75,76,1,0,0,0,76,77,1,0,0,0,
      77,78,5,32,0,0,78,79,3,12,6,0,79,11,1,0,0,0,80,84,5,33,0,0,81,83,3,
      4,2,0,82,81,1,0,0,0,83,86,1,0,0,0,84,82,1,0,0,0,84,85,1,0,0,0,85,87,
      1,0,0,0,86,84,1,0,0,0,87,88,5,34,0,0,88,13,1,0,0,0,89,91,5,9,0,0,90,
      92,3,30,15,0,91,90,1,0,0,0,91,92,1,0,0,0,92,93,1,0,0,0,93,94,5,35,
      0,0,94,15,1,0,0,0,95,99,5,7,0,0,96,98,3,4,2,0,97,96,1,0,0,0,98,101,
      1,0,0,0,99,97,1,0,0,0,99,100,1,0,0,0,100,17,1,0,0,0,101,99,1,0,0,0,
      102,107,3,20,10,0,103,104,5,36,0,0,104,106,3,20,10,0,105,103,1,0,0,
      0,106,109,1,0,0,0,107,105,1,0,0,0,107,108,1,0,0,0,108,19,1,0,0,0,109,
      107,1,0,0,0,110,111,3,8,4,0,111,112,5,13,0,0,112,21,1,0,0,0,113,114,
      3,30,15,0,114,115,5,35,0,0,115,23,1,0,0,0,116,117,5,3,0,0,117,118,
      5,31,0,0,118,119,3,30,15,0,119,120,5,32,0,0,120,123,3,4,2,0,121,122,
      5,4,0,0,122,124,3,4,2,0,123,121,1,0,0,0,123,124,1,0,0,0,124,25,1,0,
      0,0,125,126,5,8,0,0,126,127,5,31,0,0,127,128,3,30,15,0,128,129,5,32,
      0,0,129,130,3,4,2,0,130,27,1,0,0,0,131,132,5,10,0,0,132,133,3,30,15,
      0,133,134,5,35,0,0,134,29,1,0,0,0,135,136,6,15,-1,0,136,137,5,13,0,
      0,137,138,5,22,0,0,138,156,3,30,15,14,139,140,5,13,0,0,140,142,5,31,
      0,0,141,143,3,18,9,0,142,141,1,0,0,0,142,143,1,0,0,0,143,144,1,0,0,
      0,144,156,5,32,0,0,145,146,5,30,0,0,146,156,3,30,15,6,147,148,5,31,
      0,0,148,149,3,30,15,0,149,150,5,32,0,0,150,156,1,0,0,0,151,156,5,13,
      0,0,152,156,5,14,0,0,153,156,5,15,0,0,154,156,7,1,0,0,155,135,1,0,
      0,0,155,139,1,0,0,0,155,145,1,0,0,0,155,147,1,0,0,0,155,151,1,0,0,
      0,155,152,1,0,0,0,155,153,1,0,0,0,155,154,1,0,0,0,156,177,1,0,0,0,
      157,158,10,12,0,0,158,159,5,21,0,0,159,176,3,30,15,13,160,161,10,11,
      0,0,161,162,5,20,0,0,162,176,3,30,15,12,163,164,10,10,0,0,164,165,
      7,2,0,0,165,176,3,30,15,11,166,167,10,9,0,0,167,168,7,3,0,0,168,176,
      3,30,15,10,169,170,10,8,0,0,170,171,7,4,0,0,171,176,3,30,15,9,172,
      173,10,7,0,0,173,174,7,5,0,0,174,176,3,30,15,8,175,157,1,0,0,0,175,
      160,1,0,0,0,175,163,1,0,0,0,175,166,1,0,0,0,175,169,1,0,0,0,175,172,
      1,0,0,0,176,179,1,0,0,0,177,175,1,0,0,0,177,178,1,0,0,0,178,31,1,0,
      0,0,179,177,1,0,0,0,14,35,48,58,64,75,84,91,99,107,123,142,155,175,
      177
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(PrimaveraParser.TOKEN_EOF, 0);
  List<InitialStatementContext> initialStatements() => getRuleContexts<InitialStatementContext>();
  InitialStatementContext? initialStatement(int i) => getRuleContext<InitialStatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitProgram(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitProgram(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class InitialStatementContext extends ParserRuleContext {
  VarDeclContext? varDecl() => getRuleContext<VarDeclContext>(0);
  FunDeclContext? funDecl() => getRuleContext<FunDeclContext>(0);
  IfStmtContext? ifStmt() => getRuleContext<IfStmtContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ExprStmtContext? exprStmt() => getRuleContext<ExprStmtContext>(0);
  WhileStmtContext? whileStmt() => getRuleContext<WhileStmtContext>(0);
  LoopStmtContext? loopStmt() => getRuleContext<LoopStmtContext>(0);
  PrintStmtContext? printStmt() => getRuleContext<PrintStmtContext>(0);
  InitialStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initialStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterInitialStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitInitialStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitInitialStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class StatementContext extends ParserRuleContext {
  VarDeclContext? varDecl() => getRuleContext<VarDeclContext>(0);
  IfStmtContext? ifStmt() => getRuleContext<IfStmtContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ExprStmtContext? exprStmt() => getRuleContext<ExprStmtContext>(0);
  WhileStmtContext? whileStmt() => getRuleContext<WhileStmtContext>(0);
  LoopStmtContext? loopStmt() => getRuleContext<LoopStmtContext>(0);
  PrintStmtContext? printStmt() => getRuleContext<PrintStmtContext>(0);
  ReturnStmtContext? returnStmt() => getRuleContext<ReturnStmtContext>(0);
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class VarDeclContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(PrimaveraParser.TOKEN_ID, 0);
  TerminalNode? PUNTO_VIRGOLA() => getToken(PrimaveraParser.TOKEN_PUNTO_VIRGOLA, 0);
  TerminalNode? ATTR() => getToken(PrimaveraParser.TOKEN_ATTR, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  VarDeclContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterVarDecl(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitVarDecl(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitVarDecl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TypeContext extends ParserRuleContext {
  TerminalNode? TP_NUM() => getToken(PrimaveraParser.TOKEN_TP_NUM, 0);
  TerminalNode? TP_BOOL() => getToken(PrimaveraParser.TOKEN_TP_BOOL, 0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitType(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitType(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class FunDeclContext extends ParserRuleContext {
  TerminalNode? KW_DEF() => getToken(PrimaveraParser.TOKEN_KW_DEF, 0);
  TerminalNode? KW_FUNC() => getToken(PrimaveraParser.TOKEN_KW_FUNC, 0);
  TerminalNode? ID() => getToken(PrimaveraParser.TOKEN_ID, 0);
  TerminalNode? L_PAR() => getToken(PrimaveraParser.TOKEN_L_PAR, 0);
  TerminalNode? R_PAR() => getToken(PrimaveraParser.TOKEN_R_PAR, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ParamListContext? paramList() => getRuleContext<ParamListContext>(0);
  FunDeclContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_funDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterFunDecl(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitFunDecl(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitFunDecl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BlockContext extends ParserRuleContext {
  TerminalNode? L_BRACE() => getToken(PrimaveraParser.TOKEN_L_BRACE, 0);
  TerminalNode? R_BRACE() => getToken(PrimaveraParser.TOKEN_R_BRACE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitBlock(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitBlock(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ReturnStmtContext extends ParserRuleContext {
  TerminalNode? KW_RETURN() => getToken(PrimaveraParser.TOKEN_KW_RETURN, 0);
  TerminalNode? PUNTO_VIRGOLA() => getToken(PrimaveraParser.TOKEN_PUNTO_VIRGOLA, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  ReturnStmtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_returnStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterReturnStmt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitReturnStmt(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitReturnStmt(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LoopStmtContext extends ParserRuleContext {
  TerminalNode? KW_LOOP() => getToken(PrimaveraParser.TOKEN_KW_LOOP, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  LoopStmtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_loopStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterLoopStmt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitLoopStmt(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitLoopStmt(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParamListContext extends ParserRuleContext {
  List<ParamContext> params() => getRuleContexts<ParamContext>();
  ParamContext? param(int i) => getRuleContext<ParamContext>(i);
  List<TerminalNode> VIRGOLAs() => getTokens(PrimaveraParser.TOKEN_VIRGOLA);
  TerminalNode? VIRGOLA(int i) => getToken(PrimaveraParser.TOKEN_VIRGOLA, i);
  ParamListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_paramList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterParamList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitParamList(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitParamList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParamContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(PrimaveraParser.TOKEN_ID, 0);
  ParamContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_param;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterParam(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitParam(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitParam(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExprStmtContext extends ParserRuleContext {
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  TerminalNode? PUNTO_VIRGOLA() => getToken(PrimaveraParser.TOKEN_PUNTO_VIRGOLA, 0);
  ExprStmtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_exprStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterExprStmt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitExprStmt(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitExprStmt(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IfStmtContext extends ParserRuleContext {
  TerminalNode? KW_IF() => getToken(PrimaveraParser.TOKEN_KW_IF, 0);
  TerminalNode? L_PAR() => getToken(PrimaveraParser.TOKEN_L_PAR, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  TerminalNode? R_PAR() => getToken(PrimaveraParser.TOKEN_R_PAR, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  TerminalNode? KW_ELSE() => getToken(PrimaveraParser.TOKEN_KW_ELSE, 0);
  IfStmtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterIfStmt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitIfStmt(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitIfStmt(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class WhileStmtContext extends ParserRuleContext {
  TerminalNode? KW_WHILE() => getToken(PrimaveraParser.TOKEN_KW_WHILE, 0);
  TerminalNode? L_PAR() => getToken(PrimaveraParser.TOKEN_L_PAR, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  TerminalNode? R_PAR() => getToken(PrimaveraParser.TOKEN_R_PAR, 0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  WhileStmtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterWhileStmt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitWhileStmt(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitWhileStmt(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PrintStmtContext extends ParserRuleContext {
  TerminalNode? KW_PRINT() => getToken(PrimaveraParser.TOKEN_KW_PRINT, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  TerminalNode? PUNTO_VIRGOLA() => getToken(PrimaveraParser.TOKEN_PUNTO_VIRGOLA, 0);
  PrintStmtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_printStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterPrintStmt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitPrintStmt(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitPrintStmt(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExprContext extends ParserRuleContext {
  ExprContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expr;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class IdentifierContext extends ExprContext {
  TerminalNode? ID() => getToken(PrimaveraParser.TOKEN_ID, 0);
  IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterIdentifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitIdentifier(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitIdentifier(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LogicalNotContext extends ExprContext {
  TerminalNode? NON_OP() => getToken(PrimaveraParser.TOKEN_NON_OP, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  LogicalNotContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterLogicalNot(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitLogicalNot(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitLogicalNot(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParensContext extends ExprContext {
  TerminalNode? L_PAR() => getToken(PrimaveraParser.TOKEN_L_PAR, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  TerminalNode? R_PAR() => getToken(PrimaveraParser.TOKEN_R_PAR, 0);
  ParensContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterParens(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitParens(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitParens(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ComparisonContext extends ExprContext {
  List<ExprContext> exprs() => getRuleContexts<ExprContext>();
  ExprContext? expr(int i) => getRuleContext<ExprContext>(i);
  TerminalNode? LEQ_OP() => getToken(PrimaveraParser.TOKEN_LEQ_OP, 0);
  TerminalNode? GEQ_OP() => getToken(PrimaveraParser.TOKEN_GEQ_OP, 0);
  TerminalNode? LT_OP() => getToken(PrimaveraParser.TOKEN_LT_OP, 0);
  TerminalNode? GT_OP() => getToken(PrimaveraParser.TOKEN_GT_OP, 0);
  ComparisonContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterComparison(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitComparison(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitComparison(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AssignmentContext extends ExprContext {
  TerminalNode? ID() => getToken(PrimaveraParser.TOKEN_ID, 0);
  TerminalNode? ATTR() => getToken(PrimaveraParser.TOKEN_ATTR, 0);
  ExprContext? expr() => getRuleContext<ExprContext>(0);
  AssignmentContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitAssignment(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitAssignment(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class RealLiteralContext extends ExprContext {
  TerminalNode? REAL() => getToken(PrimaveraParser.TOKEN_REAL, 0);
  RealLiteralContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterRealLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitRealLiteral(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitRealLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LogicalAndContext extends ExprContext {
  List<ExprContext> exprs() => getRuleContexts<ExprContext>();
  ExprContext? expr(int i) => getRuleContext<ExprContext>(i);
  TerminalNode? AND_OP() => getToken(PrimaveraParser.TOKEN_AND_OP, 0);
  LogicalAndContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterLogicalAnd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitLogicalAnd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitLogicalAnd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MultiplicativeContext extends ExprContext {
  List<ExprContext> exprs() => getRuleContexts<ExprContext>();
  ExprContext? expr(int i) => getRuleContext<ExprContext>(i);
  TerminalNode? MULT_OP() => getToken(PrimaveraParser.TOKEN_MULT_OP, 0);
  TerminalNode? DIV_OP() => getToken(PrimaveraParser.TOKEN_DIV_OP, 0);
  TerminalNode? MOD_OP() => getToken(PrimaveraParser.TOKEN_MOD_OP, 0);
  MultiplicativeContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterMultiplicative(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitMultiplicative(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitMultiplicative(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BoolLiteralContext extends ExprContext {
  TerminalNode? BOOL_TRUE() => getToken(PrimaveraParser.TOKEN_BOOL_TRUE, 0);
  TerminalNode? BOOL_FALSE() => getToken(PrimaveraParser.TOKEN_BOOL_FALSE, 0);
  BoolLiteralContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterBoolLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitBoolLiteral(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitBoolLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AdditiveContext extends ExprContext {
  List<ExprContext> exprs() => getRuleContexts<ExprContext>();
  ExprContext? expr(int i) => getRuleContext<ExprContext>(i);
  TerminalNode? SUM_OP() => getToken(PrimaveraParser.TOKEN_SUM_OP, 0);
  TerminalNode? SUB_OP() => getToken(PrimaveraParser.TOKEN_SUB_OP, 0);
  AdditiveContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterAdditive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitAdditive(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitAdditive(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IntegerLiteralContext extends ExprContext {
  TerminalNode? INT() => getToken(PrimaveraParser.TOKEN_INT, 0);
  IntegerLiteralContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterIntegerLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitIntegerLiteral(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitIntegerLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class FuncCallContext extends ExprContext {
  TerminalNode? ID() => getToken(PrimaveraParser.TOKEN_ID, 0);
  TerminalNode? L_PAR() => getToken(PrimaveraParser.TOKEN_L_PAR, 0);
  TerminalNode? R_PAR() => getToken(PrimaveraParser.TOKEN_R_PAR, 0);
  ParamListContext? paramList() => getRuleContext<ParamListContext>(0);
  FuncCallContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterFuncCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitFuncCall(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitFuncCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LogicalOrContext extends ExprContext {
  List<ExprContext> exprs() => getRuleContexts<ExprContext>();
  ExprContext? expr(int i) => getRuleContext<ExprContext>(i);
  TerminalNode? OR_OP() => getToken(PrimaveraParser.TOKEN_OR_OP, 0);
  LogicalOrContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterLogicalOr(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitLogicalOr(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitLogicalOr(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class EqualityContext extends ExprContext {
  List<ExprContext> exprs() => getRuleContexts<ExprContext>();
  ExprContext? expr(int i) => getRuleContext<ExprContext>(i);
  TerminalNode? EQ_OP() => getToken(PrimaveraParser.TOKEN_EQ_OP, 0);
  TerminalNode? NEQ_OP() => getToken(PrimaveraParser.TOKEN_NEQ_OP, 0);
  EqualityContext(ExprContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.enterEquality(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PrimaveraListener) listener.exitEquality(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is PrimaveraVisitor<T>) {
     return visitor.visitEquality(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}