%{
#include <stdio.h>
#include <stdlib.h>

  extern int yylex();
  void yyerror(char *);
%}
%token ID NUM IF THEN LE GE EQ NE OR AND ELSE
%right '='
%left AND OR
%left '<' '>' LE GE EQ NE
%left '+''-'
%left '*''/'
%right UMINUS
%left '!'
%%

S      : ST {printf("Input accepted.\n");exit(0);};
ST    : IF '(' E2 ')' THEN ST1';' ELSE ST1';'
        ;
ST1  : ST
        | E
        ;
E    : ID'='E
      | E'+'E
      | E'-'E
      | E'*'E
      | E'/'E
      | E'<'E
      | E'>'E
      | E LE E
      | E GE E
      | E EQ E
      | E NE E
      | E OR E
      | E AND E
      | ID
      | NUM
      ;
E2  : E'<'E
      | E'>'E
      | E LE E
      | E GE E
      | E EQ E
      | E NE E
      | E OR E
      | E AND E
      | ID
      | NUM
      ;

%%

void yyerror(char *msg)
{
printf("invalid string\n");
exit(0);
}

int main()
{
  printf("Enter the exp: ");
  yyparse();
  return 0;
}
//OUTPUT
//Enter the exp: if a==b 
//invalid string
//Enter the exp: if a==b 
//invalid string


