grammar Primavera;

// Regra inicial: um programa é uma sequência de comandos
program: initialStatement* EOF;

initialStatement
    : varDecl
    | funDecl
    | ifStmt
    | block
    | exprStmt
    | whileStmt
    | loopStmt
    | printStmt
    ;

statement
    : varDecl
    | ifStmt
    | block
    | exprStmt
    | whileStmt
    | loopStmt
    | printStmt
    | returnStmt
    ;

varDecl
    : type ID (ATTR expr)? PUNTO_VIRGOLA
    ;

type
    : TP_NUM | TP_BOOL
    ;

funDecl
    : KW_DEF KW_FUNC ID L_PAR paramList? R_PAR block
    ;

block
    : L_BRACE statement* R_BRACE
    ;
    
returnStmt
    : KW_RETURN expr? PUNTO_VIRGOLA
    ;

loopStmt
    : KW_LOOP statement*
    ;

paramList
    : param (VIRGOLA param)*
    ;

param
    : type ID
    ;

exprStmt
    : expr PUNTO_VIRGOLA
    ;

ifStmt
    : KW_IF L_PAR expr R_PAR statement (KW_ELSE statement)?
    ;

whileStmt
    : KW_WHILE L_PAR expr R_PAR statement
    ;

printStmt
    : KW_PRINT expr PUNTO_VIRGOLA
    ;

// Expressões com precedência no estilo C
expr
    : ID ATTR expr                                                  # assignment
    | ID L_PAR paramList? R_PAR                                     # funcCall
    | expr OR_OP expr                                               # logicalOr
    | expr AND_OP expr                                              # logicalAnd
    | expr (LEQ_OP | GEQ_OP | LT_OP | GT_OP) expr                   # comparison
    | expr (EQ_OP | NEQ_OP) expr                                    # equality
    | expr (SUM_OP | SUB_OP) expr                                   # additive
    | expr (MULT_OP | DIV_OP | MOD_OP) expr                         # multiplicative
    | NON_OP expr                                                   # logicalNot
    | L_PAR expr R_PAR                                              # parens
    | ID                                                            # identifier
    | INT                                                           # integerLiteral
    | REAL                                                          # realLiteral
    | (BOOL_TRUE | BOOL_FALSE)                                      # boolLiteral
    ;

// ------------------- Lexer -------------------

TP_NUM : 'num';
TP_BOOL  : 'bool';
KW_IF    : 'se';
KW_ELSE  : 'altrimenti';
KW_DEF : 'def';
KW_FUNC : 'funzione';
KW_LOOP : 'ciclo';
KW_WHILE : 'finche';
KW_RETURN : 'restituire';
KW_PRINT : 'mostrare';

BOOL_TRUE : 'Vero';
BOOL_FALSE : 'Falso';

ID  : [a-zA-Z_][a-zA-Z_0-9]* ;
INT : [0-9]+ ;
REAL : [0-9]+'.'[0-9]+;

LEQ_OP    : '<=';
GEQ_OP    : '>=';
EQ_OP     : '==';
NEQ_OP    : '!=';
AND_OP    : '&&';
OR_OP     : '||';

ATTR      : '=';
SUM_OP    : '+';
SUB_OP    : '-';
MULT_OP   : '*';
DIV_OP    : '/';
MOD_OP    : '%';
LT_OP     : '<';
GT_OP     : '>';
NON_OP    : '!';

L_PAR    : '(';
R_PAR    : ')';
L_BRACE    : '{';
R_BRACE    : '}';
PUNTO_VIRGOLA : ';';
VIRGOLA : ',';

WS           : [ \t\r\n]+ -> skip ;
