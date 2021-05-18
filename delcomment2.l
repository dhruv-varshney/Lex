%{ 
#include<stdio.h> 
int comcount=0; 
%} 
s "/" 
a "*" 
single \/\/.* 
multiline {s}{a}+([^*]|\n)*{a}+{s} 
%% 
{single} {;comcount++;} 
{multiline} {;comcount++;} 
.|\n fprintf(yyout, "%s", yytext); 

 

%% 
void main() 
{ 
yyin = fopen("input2.c", "r"); 
yyout= fopen ("output2.c", "w"); 
yylex(); 
printf("The no of comment lines are:%d\n", comcount); 
} 

 
