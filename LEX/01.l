//strings having 000 as substring


start (0|1)*
end (000)


%{
	int count;
%}

%%

(({start})({end})({start})) count++;

%%

int yywrap(void){}
int main(void){
printf("Enter the string : ");
yylex();
if (count==1){
printf("Valid String\n");}
else{
printf("Invalid String\n");}
return 0;

}
