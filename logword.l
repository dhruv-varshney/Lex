%{
int count = 0;
%}
%%
[a-zA-Z]+ {if(yyleng > count) {count=yyleng;}}
%%
void main()
{
printf("enter the statement and press Ctrl+D to exit\n");
yylex();
printf("Largest word in the sentence has %d characters",count);
}
