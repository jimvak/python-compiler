
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ID = 258,
     NUMBER = 259,
     STRING_LIT = 260,
     STRING_VAR = 261,
     SSS = 262,
     S = 263,
     HASHTAG = 264,
     NEWLINE = 265,
     COLON = 266,
     UNDERSCORE = 267,
     EXIT = 268,
     EQ = 269,
     PLUS = 270,
     MINUS = 271,
     MUL = 272,
     DIVIDE = 273,
     LBRACKET = 274,
     RBRACKET = 275,
     SEMICOLON = 276,
     BRACKETS = 277,
     BY = 278,
     COMMA = 279,
     MYBY = 280,
     LHOOK = 281,
     RHOOK = 282,
     PRINT = 283,
     RARE = 284,
     CLASS = 285,
     DEF = 286,
     IN = 287,
     FOR = 288,
     RANGE = 289,
     IMPORT = 290,
     AS = 291,
     FLOAT = 292,
     DOT = 293,
     IF = 294,
     GE = 295,
     GT = 296,
     LE = 297,
     LT = 298,
     NE = 299,
     LAMBDA = 300,
     DICT = 301
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


