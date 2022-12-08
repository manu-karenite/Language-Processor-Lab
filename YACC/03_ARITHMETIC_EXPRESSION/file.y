%{
    #include<stdio.h>
	#include <stdlib.h>

  extern int yylex();
  void yyerror(char *);
%}
%token NUMBER
%token VARIABLE

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%

S: VARIABLE'='E {
       printf("\nEntered arithmetic expression is Valid\n\n");
       return 0;
     }
E:E'+'E 
 |E'-'E 
 |E'*'E 
 |E'/'E 
 |E'%'E 
 |'('E')' 
 | NUMBER 
 | VARIABLE
;

%%

void main()
{ 
   printf("\nEnter Any Arithmetic Expression");
   yyparse();
}

void yyerror(char *msg)
{
printf("invalid string\n");
exit(0);
}

//OUTPUT
//Enter Any Arithmetic Expressiona=b+c*5
//Entered arithmetic expression is Valid
//Enter Any Arithmetic Expression+(a -b) 
//invalid string
