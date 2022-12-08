%{
	//to count uppercase, lowercase, digits etc from file
	int u=0;
	int l=0;
	int d=0;
	int w=0;
	int n=0;
	int t=0;
	int s=0;
%}

%%

[A-Z] {u++;t++;}
[a-z] {l++;t++;}
[0-9] {d++;t++;}
[ ] {w++;t++;}
[\n] {n++;w++;}
. {s++;t++;}

%%

int yywrap(void){}
int main(void){
yyin=fopen("sample.txt","r");
yylex();


printf("UpperCase Letters %d , LowerCase Letters %d , Digits %d , Words %d , Lines %d , Total Characters %d , Special Characters %d\n",u,l,d,w,n,t,s);
return 0;

}
