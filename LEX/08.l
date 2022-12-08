%{
//count number of vowels in the string
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int count=0;

int countVowels(char* word,int l){
	int count=0;
	for(int i=0;i<l;i++){
		char letter = word[i];
		if (letter=='A' || letter=='a' ||letter=='e' || letter=='E' || letter=='I' || letter=='i' || letter=='o' || letter=='O' || letter=='u' || letter=='U')count++;
	}
	return count;
}
%}
%%

[a-zA-Z0-9]+ {
	int ans = countVowels(yytext,yyleng);
	printf("%s has %d number of vowels\n",yytext,ans);
}

%%
int yywrap(void){}

int main(){

	printf("Reading contents from file..\n");
	yyin=fopen("sample.txt","r");
	yylex();
	
	return 0;
}
