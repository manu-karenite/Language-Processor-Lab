%{
//lex calculator
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int calc(char * msg){

int l=strlen(msg);
int found=-1;
int first=0;
int second=0;
for(int i=0;i<l;i++){

	int ascii=msg[i];
	//printf("%d\n",ascii);
	if(ascii>57 || ascii<48){
		found=1;	
	}
	else{
		if(found==-1){
			first=first*10+ascii-48;
		}
		else if(found==1){
			second=second*10+ascii-48;
		}
	}
	//printf("%d %d\n",first,second);
}
return first+second;

} 
%}
%%
[0-9]+[+][0-9]+ {
	int ans=calc(yytext);
	printf("Result is : %d",ans);
}
. {printf("Invalid String");}

%%
int yywrap(void){
}



int main(){
printf("Enter one expression : ");
yylex();
return 0;
}
