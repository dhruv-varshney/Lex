%{
#include<stdio.h>
%}
%%
(" ") {}
%%
main()
{
yylex();
return 0;
}
int yywrap()
{
}


