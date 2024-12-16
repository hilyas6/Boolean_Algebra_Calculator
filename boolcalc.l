%{
  #include <stdio.h>
  #include "boolcalc.tab.h"
%}
%option noyywrap

%%

[ \t]	;
[a-zA-Z]+|[0-1] {yylval = (*yytext == '1' || *yytext== 't' || *yytext == 'T'); return BOOL;}
\n				{return NEWLINE;}
\&				{return AND; }
\|				{return OR; }
\!				{return NOT; }
%%
