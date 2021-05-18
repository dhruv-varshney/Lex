%{
#include<stdio.h>
#include<string.h>
int nooper=0,nooperand=0,i=0,j=0,valid=0;
char opnd[10][10],opert[10][10];
%}
%%
"(" { valid=1; }
")" { valid=0; }
"+"|"*" { nooper++; strcpy(opert[i],yytext); i++;}
[0-9]+ { nooperand++; strcpy(opnd[j],yytext); j++;}
[^+*]"("[^0-9] yyF();
[+*]")" yyF();
%%
int main()
{
int k;
printf("Enter The expression and press ctrl+d to exit\n");
yylex();
if(valid==0 && (nooperand-nooper)==1)
{
printf("The expression is valid\n");
printf("the operator are \n");
for(k=0;k<i;k++)
{
printf("%s\n",opert[k]);
}
printf("the operands are \n");
for(k=0;k<j;k++)
{
printf("%s\n",opnd[k]);
}
}
else
{
printf("The expression is invalid");
return 0;
}
}
int yyF()
{
printf("Invalid");
exit(0);
}



