%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void yyerror(char *);
extern int yylex();
%}
%token ZERO ONE NL MID

%%
STMT :  S NL {printf("Valid String!");exit(0);};
S: ZERO S ONE | ZERO S | ONE S | {};

%%

void yyerror(char *msg){
	printf("Invalid String!");
}

int main(){
	printf("Plese enter the string : ");
	yyparse();
	return 0;
}
