%{
//ACCEPTING STRINGS HAVING EVEN 0S and EVEN 1s
#include <stdio.h>
#include <stdlib.h>
int ones=0;
int zeroes=0;
%}
%%

[0] {zeroes++;}
[1] {ones++;}
. {printf("Extra character obtained : %c\n",yytext[0]);}
%%

int yywrap(void){
}

int main(){

yylex();
printf("zeroes %d ; ones %d\n",zeroes,ones);
if(ones%2==0 && zeroes%2==0){
printf("Successfully Accepted!");
}
else{
printf("Invalid String!");
}
return 0;
}
