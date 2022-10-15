/*
 * Flex file
 */
%{
#include <stdio.h>
#include "ask.tab.h"
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
extern int yylex();
#define border printf("\n--------------------------------------------\n")

extern FILE *yyin;
extern FILE *yyout;
%}

%%
"print" return (PRINT);
"and"|"assert"|"break"|"del"|"elif"|"else"|"except"|"exec"|"finally"|"from"|"global" return (RARE);
"is"|"not"|"or"|"pass"|"raise"|"return"|"try"|"while"|"with"|"yield" return (RARE);
"nonlocal"|"false"|"None"|"continue"|"global"|"pass"|"raise"|"return"|"elif"|"True"|"else" return (RARE);
"class" return (CLASS);
"def" return (DEF);
"if" return (IF);
"lambda" return (LAMBDA);
"exit" return (EXIT);
"in" return (IN);
"for" return (FOR);
"range" return (RANGE);
"import" return (IMPORT);
"as" return (AS);
"dict" return (DICT);

[0-9]+ return NUMBER;
[0-9]+\.[0-9]+ return FLOAT;
[_a-zA-Z][_a-zA-Z0-9]* return ID;

 

[ \t] ;
\= {return (EQ); }
\+ return (PLUS);
\- return (MINUS);
\* return (MUL);
\/ return (DIVIDE);
\( return (LBRACKET);
\) return (RBRACKET);
\{ return (LHOOK);
\} return (RHOOK);
\n return (NEWLINE);
\; return (SEMICOLON);
\# return (HASHTAG);
\: return (COLON);
\, return (COMMA);
"." return (DOT);
"!=" return (NE); 
"<"  return (LT); 
"<=" return (LE); 
">"  return (GT); 
">=" return (GE); 


\"([^\"\n])*\" return (STRING_LIT);
\'([^\'\n])*\' return (STRING_VAR);
\(([^\n])*\)   return (SSS);





. { printf("\nunidentified token %s\n",yytext); exit(1);}

%%
