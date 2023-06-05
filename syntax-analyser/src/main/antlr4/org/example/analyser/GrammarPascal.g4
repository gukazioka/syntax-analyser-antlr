grammar GrammarPascal;

program  :  PROGRAM id  {System.out.println("Ação 1 não implementada");} corpo PONTO {System.out.println("Ação 30 não implementada");};

corpo : declara? BEGIN sentencas END;

declara:VAR dvar mais_dc;

dvar : variaveis DOIS_PONTOS tipo_var;

tipo_var : INTEGER;

variaveis :id {System.out.println("Ação 2 não implementada");} mais_var?;

mais_var : VIRGULA variaveis;

mais_dc : PONTO_VIRGULA  cont_dc?;

cont_dc: dvar mais_dc;

sentencas : comando mais_sentencas;

mais_sentencas : PONTO_VIRGULA cont_sentencas?;

cont_sentencas:  sentencas;

var_read : id {System.out.println("Ação 5 não implementada");} mais_var_read?;

mais_var_read : VIRGULA var_read;

var_write : id {System.out.println("Ação 6 não implementada");} mais_var_write?;

mais_var_write : VIRGULA var_write;

comando : READ PARENTESES_ESQUERDO var_read PARENTESES_DIREITO |
          WRITE PARENTESES_ESQUERDO var_write PARENTESES_DIREITO |
          FOR id {System.out.println("Ação 25 não implementada");} DOIS_PONTOS_IGUAL expressao {System.out.println("Ação 26 não implementada");} TO {System.out.println("Ação 27 não implementada");} expressao  {System.out.println("Ação 28 não implementada");}
          DO BEGIN sentencas END {System.out.println("Ação 29 não implementada");} |
          REPEAT {System.out.println("Ação 23 não implementada");} sentencas UNTIL PARENTESES_ESQUERDO condicao PARENTESES_DIREITO {System.out.println("Ação 24 não implementada");}  |
          WHILE {System.out.println("Ação 20 não implementada");} PARENTESES_ESQUERDO condicao PARENTESES_DIREITO {System.out.println("Ação 21 não implementada");}  DO BEGIN sentencas END {System.out.println("Ação 22 não implementada");} |
          IF PARENTESES_ESQUERDO condicao PARENTESES_DIREITO {System.out.println("Ação 17 não implementada");} THEN BEGIN sentencas END {System.out.println("Ação 18 não implementada");}
          pfalsa? {System.out.println("Ação 19 não implementada");} |
          id {System.out.println("Ação 13 não implementada");} DOIS_PONTOS_IGUAL expressao {System.out.println("Ação 14 não implementada");};

condicao: expressao relacao {System.out.println("Ação 15 não implementada");} expressao {System.out.println("Ação 16 não implementada");};
pfalsa : ELSE BEGIN  sentencas END;
relacao: IGUAL
      | DIFERENTE
      | MENOR
      | MENOR_IGUAL
      | MAIOR
      | MAIOR_IGUAL;
expressao : termo outros_termos?;
outros_termos: op_ad {System.out.println("Ação 9 não implementada");} termo {System.out.println("Ação 10 não implementada");} outros_termos?;
op_ad : ADICAO | SUBTRACAO;
termo : fator mais_fatores?;
mais_fatores : op_mul {System.out.println("Ação 11 não implementada");} fator {System.out.println("Ação 12 não implementada");} mais_fatores?;
op_mul : MULTIPLICACAO | DIVISAO;
fator : id {System.out.println("Ação 7 não implementada");} | intnum {System.out.println("Ação 8 não implementada");}  |
        PARENTESES_ESQUERDO expressao PARENTESES_DIREITO;

intnum :  DIGITO+ {System.out.println("Ação 4 não implementada");};
id : IDENTIFICADOR  {System.out.println("Ação 3 não implementada");};



READ : R E A D;
PROGRAM  : P R O G R A M;
FOR : F O R;
REPEAT : R E P E A T;
WHILE : W H I L E;
IF : I F;
TO : T O;
UNTIL : U N T I L;
DO : D O;
BEGIN : B E G I N;
ELSE : E L S E;
THEN : T H E N;
END : E N D;
VAR : V A R;
INTEGER : I N T E G E R;
WRITE : W R I T E;
VIRGULA : ',';
LETRA : [A-Za-z];
DIGITO : [0-9];
PONTO_VIRGULA : ';';
PARENTESES_DIREITO : ')';
PARENTESES_ESQUERDO : '(';
DOIS_PONTOS_IGUAL: ':=';
DOIS_PONTOS : ':';
IGUAL        	 : '=' ;
MAIOR        	 : '>' ;
MAIOR_IGUAL      : '>=' ;
MENOR        	 : '<' ;
MENOR_IGUAL      : '<=' ;
DIFERENTE        : '<>';
MULTIPLICACAO    : '*' ;
DIVISAO       	 : '/' ;
ADICAO       	 : '+' ;
SUBTRACAO        : '-' ;
PONTO  : '.';
IDENTIFICADOR    : [a-zA-Z] ([a-zA-Z] | [0-9])* ;
WS : [ \t\r\n]+ -> skip ;
COMMENT : '{' .*? '}' -> skip;
LCOMMENT : '//' .*? '\r'? '\n' -> skip ;
fragment A : [aA];
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment J : [jJ];
fragment K : [kK];
fragment L : [lL];
fragment M : [mM];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment Q : [qQ];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
fragment X : [xX];
fragment Y : [yY];
fragment Z : [zZ];