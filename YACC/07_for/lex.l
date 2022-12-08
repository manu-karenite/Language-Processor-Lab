%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "y.tab.h"
%}

%%
for {printf("FOR\n");return FOR;}
int {printf("INT\n");return INT;}
[ ] {return SP;}
[A-Za-z][a-zA-Z0-9]* {printf("ID\n");return ID;}
[0-9]+ {return NUM;}
'<=' {return LE;}
'>=' {return GE;}
'==' {return EQ;}
'!=' {return NE;}
. {return yytext[0];}
%%
int yywrap(){
	return 1;
}


