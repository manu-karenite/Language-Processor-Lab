%{
#include<stdlib.h>
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}
%%

[0] {return ZERO;}
[1] {return ONE;}
[01]* {return MID;}
[\n] {return NL;}
. {return yytext[0];}
%%
int yywrap(){return 1;}
