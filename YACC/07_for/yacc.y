%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex();
void yyerror(char *);
%}

%token FOR INT ID NUM LE GE EQ NE SP
%left LE GE NE EQ
%left '>' '<'
%left '+' '-' '*' '/'
%right '='

%%

STMT : FOR '(' INT SP ID '=' VAR ';' COND ';' ID '=' EXPRESSION ';' ')' '{' '}' {printf("Valid String!");exit(0);};
COND :  ID '<' VAR |
	ID '>' VAR |
	ID LE VAR |
	ID GE VAR |
	ID EQ VAR |
	ID NE VAR ;

EXPRESSION :   ID '+' VAR |
		ID '-' VAR |
		ID '*' VAR |
		ID '/' VAR ;

VAR : ID | NUM ;		

%%

void yyerror(char * msg){
	printf("Invalid String!\n");
	exit(0);
}

int main(){
	printf("Enter the string : ");
	yyparse();
	return 0;
}
