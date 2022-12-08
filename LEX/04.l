%{
#include <stdio.h>
#include <stdlib.h>
int i=0;
//COUNTING NUMBER OF CHARACTERS
%}

%%

[0-9A-Za-z] {i++;}
. {printf("Character not counted is ");ECHO;printf("\n");}


%%

int yywrap(void){}

int main(){

	printf("Please Enter a String : ");
	

	yylex();
	printf("Number of Characters in string is : %d",i);
	return 0;

}

