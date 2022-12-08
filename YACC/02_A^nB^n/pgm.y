%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *);
%}

%token A B NL

%%

stmt:S NL {printf("Valid String\n");};
S:A S B | A B;

%%

void yyerror(char *msg){
printf("String Invalid");
exit(0);
}

int main(){
printf("Enter the message : ");
yyparse();
return 0;}

