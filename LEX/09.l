%{
//read from input.txt, converts uppercase to lowercase, vice versa into output.txt
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
FILE *output;
%}
%%

[a-z] {
	char a = yytext[0];
	int ascii=a;
	ascii-=32;
	a=ascii;
	fwrite(&a,sizeof(char),1,output);
}

[A-Z] {
	char a = yytext[0];
	int ascii=a;
	ascii+=32;
	a=ascii;
	fwrite(&a,sizeof(char),1,output);
}

[0-9] {
	char a = yytext[0];
	int ascii=a;
	char last=ascii%10+48;
	char first=ascii/10+48;
	fwrite(&first,sizeof(char),1,output);
	fwrite(&last,sizeof(char),1,output);
}

. {
	fwrite(&yytext[0],sizeof(char),1,output);
}

%%
int yywrap(void){}
int main(){
	printf("Reading from input.txt.............\n");
	yyin=fopen("input.txt","r");
	output=fopen("output.txt","w");
	yylex();
	return 0;
}
