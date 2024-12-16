%{
#include <stdio.h>
#include <stdbool.h>

int yylex(void);
void yyerror(const char *);
extern char *yytext;

extern FILE* yyin;
%}

%define api.value.type {double}

%token NEWLINE
%token BOOL
%token AND 
%token OR
%token NOT

%start input

%%

input:
  %empty
| input line
;

line:
  NEWLINE
| exp NEWLINE {if ($1) {printf("TRUE\n");}
		 else {printf("FALSE\n");}
		}
| error NEWLINE { yyerrok; }
;

exp:
  BOOL {$$ = $1;}
| exp exp AND {$$ = $1 && $2;}
| exp exp OR {$$ = $1 || $2;}
| exp NOT {$$ = !($1);};

%%

void yyerror(const char *s){
  fprintf(stderr, "%s\n", s);
}

int main(void){
  yyin = stdin;
  do {
	yyparse();
  } while (!feof(yyin));
  return 0;
}
