%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}
%%
[a] {return A;}
[b] {return B;}
[c] {return C;}
[\n] {return NL;}
. {return yytext[0];}
%%
int yywrap(){}
