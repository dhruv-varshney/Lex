%{
int count=0;
%}

%%
[a-zA-Z] count++;

%%
void main()
{
printf("enter the string and press ctrl+D to exit\n");
yylex();
printf("the number of characters is %d",count);
}
