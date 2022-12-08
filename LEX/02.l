//starting with aa , ending with bb

start (aa)
end (bb)
mid (a|b)*

%{
	int count=0;
%}

%%

(({start})({mid})({end})) count++;

%%

int yywrap(void){}
int main(void){
printf("Enter the string : ");
yylex();
if (count==1){
printf("Valid String\n");
}
else{
printf("Invalid String\n");}

return 0;

}
