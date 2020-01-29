%{
	int lett = 0;
	int vow = 0;
	
%}

%%
[aeiouAEIOU] {vow++;}

[a-zA-Z] {lett++;}
%%
int main(int argc, char **argv)
{
	yylex();
	printf("%8d%8d\n",vow,lett);

}
int yywrap() {
	return 1;
}