%option noyywrap
%{
#include <stdio.h>
%}
%%
"int"                  { printf("KEYWORD: INT\n"); }
"float"                { printf("KEYWORD: FLOAT\n"); }
"if"                   { printf("KEYWORD: IF\n"); }
"else"                 { printf("KEYWORD: ELSE\n"); }
"return"               { printf("KEYWORD: RETURN\n"); }
">="                   { printf("GREATER_EQUAL: %s\n", yytext); }
"("                    { printf("LEFT_PAREN: %s\n", yytext); }
")"                    { printf("RIGHT_PAREN: %s\n", yytext); }
"{"                    { printf("LEFT_BRACE: %s\n", yytext); }
"}"                    { printf("RIGHT_BRACE: %s\n", yytext); }
";"                    { printf("SEMICOLON: %s\n", yytext); }
"="                    { printf("ASSIGN: %s\n", yytext); }
"+"                    { printf("PLUS: %s\n", yytext); }
"-"                    { printf("MINUS: %s\n", yytext); }
"*"                    { printf("MULTIPLY: %s\n", yytext); }
"/"                    { printf("DIVIDE: %s\n", yytext); }
[0-9]+                 { printf("INTEGER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]+               { /* ignore whitespace */ }
.                      { printf("UNKNOWN: %s\n", yytext); }
%%
int main()
{
    yylex();
    return 0;
}
