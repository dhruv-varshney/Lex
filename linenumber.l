%{
int lineno=0;
%}

%%
.*\n { lineno++;
       printf("%5d %s", lineno, yytext);
     }
     
%%
void main()
{
yyin = fopen("input.txt","r");
yylex();
fclose(yyin);
}
