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
COMENT = (\/\/.*)|((\/\*)([^*]|(\*+([^*/])))*(\*+\/))
ID = ([A-Za-z_])([A-Za-z0-9_])*
INTEIROS = 0|([1-9]+[0-9]*)
PONTUACAO = [";"|"."|","|"="|"("|")"|"{"|"}"|"["|"]"]
%%

boolean {System.out.println("Palavra reservada BOOLEAN: "+ yytext());}
class {System.out.println("Palavra reservada CLASS: "+ yytext());}
public {System.out.println("Palavra reservada PUBLIC: "+ yytext());}
extends {System.out.println("Palavra reservada EXTENDS: "+ yytext());}
static {System.out.println("Palavra reservada STATIC: "+ yytext());}
void {System.out.println("Palavra reservada VOID: "+ yytext());}
main {System.out.println("Palavra reservada MAIN: "+ yytext());}
String {System.out.println("Palavra reservada STRING: "+ yytext());}
int {System.out.println("Palavra reservada INT: "+ yytext());}
while {System.out.println("Palavra reservada WHILE: "+ yytext());}
if {System.out.println("Palavra reservada IF: "+ yytext());}
else {System.out.println("Palavra reservada ELSE: "+ yytext());}
return {System.out.println("Palavra reservada RETURN: "+ yytext());}
length {System.out.println("Palavra reservada LENGTH: "+ yytext());}
true {System.out.println("Palavra reservada TRUE: "+ yytext());}
false {System.out.println("Palavra reservada FALSE: "+ yytext());}
this {System.out.println("Palavra reservada THIS: "+ yytext());}
new {System.out.println("Palavra reservada NEW: "+ yytext());}
System.out.println {System.out.println("Palavra reservada SYSTEM.OUT.PRINTLN: "+ yytext());}

"&&" {System.out.println("Operador AND: "+ yytext());}
"<" {System.out.println("Operador <: "+ yytext());}
"==" {System.out.println("Operador ==: "+ yytext());}
"!=" {System.out.println("Operador !=: "+ yytext());}
"+" {System.out.println("Operador SOMA: "+ yytext());}
"-" {System.out.println("Operador SUBTRACAO: "+ yytext());}
"*" {System.out.println("Operador MULT: "+ yytext());}
"!" {System.out.println("Operador NEGACAO: "+ yytext());}

{PONTUACAO} {System.out.println("Delimitadores/pontuacao: "+ yytext());}
{WS} {/*ignora*/}
{COMENT} {System.out.println("Alo coment: "+ yytext());}
{ID} {System.out.println("Identificador: "+ yytext());}
{INTEIROS} {System.out.println("Inteiro: "+ yytext());}

. { throw new RuntimeException("Caractere ilegal! " + yytext() + " na linha: " + yyline + ", coluna: " + yycolumn); }
