%{
#include<stdio.h>

%}
%%
[+]?[0-9]+ {printf("Postive Integer");}
[-]{1}[0-9]+ {printf("Negative Integer");}
[+]?[0-9]+[.]{1}[0-9]+ {printf("Postive Fraction");}
[-]?[0-9]+[.]{1}[0-9]+ {printf("Negative Fraction");}
%%
void main()
{
printf("Enter the number and press Ctrl+D\n");
yylex();
}
