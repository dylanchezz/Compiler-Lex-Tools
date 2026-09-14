%option noyywrap
%{
#include <stdio.h>
%}

%%
[0-9]+                  { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*   { printf("IDENTIFIER: %s\n", yytext); }
[ \t]+                  { /* ignore spaces and tabs */ }
\n                      { /* ignore newlines or use return 0; to stop on Enter */ }
.                       { printf("UNKNOWN: %s\n", yytext); }
%%

int main(void)
{
    yylex();
    return 0;
}
