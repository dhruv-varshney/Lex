%{
#include<stdio.h>
%}

%%
[a-zA-Z] printf("%s",yytext);

%%
void main()
{
printf("enter the string and ctrl+D to exit");
yylex();
}
