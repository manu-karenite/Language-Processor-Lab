%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *);
extern int yylex();
%}
%token A B C NL
%%

STMT :  S NL {printf("Valid String!");};
S : A P B Q C;
P : A P B | {};
Q : B Q C | {};

%%

void yyerror(char * msg){
	printf("Invalid String!");
}

int main(){
	printf("Please enter a string : ");
	yyparse();
	return 0;
}
