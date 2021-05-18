%{
int count =0;
%}
Letter [a-zA-Z_]
Digit [0-9]

%%
{Letter}({Letter}|{Digit})* count++;

%%
void main()
{
printf("Enter the sentence & Press Ctrl+D\n");
yylex();
printf("the no. of identifier is %d",count);
}
