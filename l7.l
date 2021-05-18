%{ #include<studio.h>
int n_char=0;

%}

%%
\n {++n_char;}
. ++n_char;

%%

void main()
{
 yylex();
 printf("n# of characters: %d",n_char);
 printf("\n");
}

