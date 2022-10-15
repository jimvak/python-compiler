/*
 * Bison file
 */
%{
#include "ask.tab.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

extern FILE *yyin;
extern FILE *yyout;

extern int yylex();
extern int yyparse();

void yyerror(char *);

#define border printf("\n--------------------------------------------\n")
%}
 // tokens
%token ID NUMBER STRING_LIT STRING_VAR SSS S HASHTAG NEWLINE COLON UNDERSCORE EXIT
%token EQ PLUS MINUS MUL DIVIDE LBRACKET RBRACKET SEMICOLON BRACKETS BY COMMA MYBY LHOOK RHOOK
%token PRINT RARE CLASS DEF IN FOR RANGE IMPORT AS
%token FLOAT
%token DOT
%token IF
%token GE GT LE LT NE
%token LAMBDA
%token DICT

 //set precedence
%right EQ
%left PLUS MINUS
%left MUL DIVIDE

%%
//Grammar 
start: stmt NEWLINE {printf("\nThis is a valid python expression\n"); border; YYACCEPT;}
  | stmt2 NEWLINE {printf("\nThis is valid expression \n"); border; YYACCEPT;}

stmt: assign_arithmetic
    | assign_str
    | display

stmt2: Comment
    | klasi
    | sinartisi
    | objectCreation
    | objectCalling
    | Ifstatement
    | lambdastm
    | forStatement
    | importStatement
    | dictCreation
    
identifier: ID
          | keyword {yyerror("\nkeyword can't be used as a identifier\n"); YYABORT;}

keyword: PRINT
        | RARE
        | CLASS
        | DEF
        | IF
        | LAMBDA
	| IN
	| FOR
	| RANGE
	| IMPORT 
       
assign_str: identifier EQ strings

display: PRINT strings
       | PRINT strings MUL NUMBER
       | PRINT strings PLUS strings
       | PRINT expr
	   
strings: STRING_LIT
       | STRING_VAR
       | SSS
       
assign_arithmetic: identifier EQ expr       

expr: expr PLUS expr
    | expr MINUS expr
    | expr MUL expr
    | expr DIVIDE expr
    | factor
    | LBRACKET expr RBRACKET
    | SIGN factor
    
SIGN: PLUS
    | MINUS

factor: identifier
      | NUMBER
      | FLOAT

Comment:  HASHTAG expr
      | HASHTAG

Ifstatement: IF identifier EQ EQ identifier COLON
        | IF identifier LT identifier COLON
        | IF identifier LE identifier COLON
        | IF identifier GE identifier COLON
        | IF identifier GT identifier COLON

lambdastm: LAMBDA factor COLON factor
        | LAMBDA factor COLON factor PLUS factor
        | LAMBDA factor COLON factor MINUS factor
        | LAMBDA factor COLON factor MUL factor
        | LAMBDA factor COLON factor DIVIDE factor
        | LAMBDA factor COMMA factor COLON factor PLUS factor
        | LAMBDA factor COMMA factor COLON factor MINUS factor
        | LAMBDA factor COMMA factor COLON factor MUL factor
        | LAMBDA factor COMMA factor COLON factor DIVIDE factor
        | LBRACKET LAMBDA factor COLON factor PLUS factor RBRACKET


klasi:  CLASS identifier COLON

sinartisi:  DEF identifier SSS COLON
objectCreation: identifier EQ identifier SSS
objectCalling: identifier DOT identifier SSS

forStatement: FOR identifier IN STRING_LIT COLON
	| FOR identifier IN identifier COLON
	| FOR identifier IN RANGE SSS COLON

importStatement: IMPORT identifier 
	| IMPORT identifier AS identifier

dictCreation: identifier EQ LHOOK RHOOK
            | identifier EQ LHOOK factor COLON factor RHOOK
            | identifier EQ LHOOK factor COLON factor COMMA factor COLON factor RHOOK
            | identifier EQ LHOOK factor COLON factor COMMA factor COLON factor COMMA factor COLON factor RHOOK
            | identifier EQ LHOOK factor COLON factor COMMA factor COLON factor COMMA factor COLON factor COMMA factor COLON factor RHOOK


   
%%

main()
{
  
	printf("\n--------ENTER HERE-------\n");
	printf("\nEnter a python expression: \n");
	yyparse();    
}

void yyerror(char *s)
{
        fprintf(stderr, "%s\n", s);
	
}

