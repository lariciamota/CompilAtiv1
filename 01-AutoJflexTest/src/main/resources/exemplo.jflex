package atividade1;

%%

/* N�o altere as configura��es a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

WS = [\n|\t|\r|\f| ]
COMENT = [(//)(.)* | (/\*)([^*]|(\*+([^*/])))*(\*+/)]
ID = ([A-Za-z_])([A-Za-z0-9_])*
INTEIROS = 0|([1-9]+[0-9]*)
PONTUACAO = [";"|"."|","|"="|"("|")"|"{"|"}"|"["|"]"]

%%
"boolean"|"class"|"public"|"extends"|"static"|"void"|"main"|"String"|"int"|"while"|"if"|"else"|"return"|"length"|"true"|"false"|"this"|"new"|"System.out.println" {System.out.println("Palavra reservada: "+ yytext());}
"&&"|"<"|"=="|"!="|"+"|"-"|"*"|"!" {System.out.println("Operador: "+ yytext());}
{PONTUACAO} {System.out.println("Delimitadores/pontuacao: "+ yytext());}
{ID} {System.out.println("Identificador: "+ yytext());}
{INTEIROS} {System.out.println("Inteiro: "+ yytext());}
{WS} {/*ignora*/}
{COMENT} {/*ignora*/}
. { throw new RuntimeException("Caractere ilegal! " + yytext() + " na linha: " + yyline + ", coluna: " + yycolumn); }
