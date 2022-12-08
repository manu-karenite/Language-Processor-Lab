%{
//counting number of even numbers and number of odd numbers
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int even=0;
int odd=0;

void solve(char * msg,int l,int *even,int *odd){
int lastDigit = msg[l-1];
if (lastDigit%2==0){
	*even=*even+1;
}
else{
*odd+=1;
}
}
%}
%%
[0-9]+ {
	solve(yytext,yyleng,&even,&odd);
}
%%
int yywrap(void){}

int main(){
printf("Reading text from text file\n");
yyin=fopen("sample.txt","r");
yylex();
printf("Even : %d\n",even);
printf("Odd : %d\n",odd);
return 0;
}
