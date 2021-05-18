%{
int nlines,nwords,nchars;
int sc=0;
%}

%%
([ ])+ sc++;
\n {
	nchars++;nlines++; 
	}
 
[^ \n\t]+ {nwords++, nchars=nchars+yyleng;}
. {nchars++;}
%%

void main() 
{
	yyin=fopen("dhruv","r");
 yylex();
 printf("Lines = %d\nChars=%d\nWords=%d",nlines,nchars,nwords);
 printf("\nNo. of spaces=%d", sc);
} 

