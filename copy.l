%{
#include<stdio.h>
#include<string.h>
char line[20];
FILE *out;
%}
%%
['\n'] { fprintf(out,"%s\n",line);}
(.*)  {strcpy(line,yytext);}
%%
main()
{
yyin=fopen("/home/dhruv/Python_Random_Programs/dv2.py","r");
out=fopen("/home/dhruv/Random files/dv.py","w");
yylex();
}
