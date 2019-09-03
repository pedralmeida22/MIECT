grammar SetCalc;

main : stat* EOF ;

stat: expr ;

expr : e1=expr '\\' e2=expr     #ExprSub
     | e1=expr '&' e2=expr      #ExprIntersect
     | e1=expr '+' e2=expr      #ExprAdd
     | '(' e=expr ')'           #ExprParen
     | set                      #ExprSet 
     | VAR '=' e=expr           #ExprAssig
     | VAR                      #ExprVar
     ;

set : '{' ( elem (',' elem)* )? '}' ;

elem : NUM | WORD ;

WORD : [a-z]+ ;
VAR : [A-Z]+ ;
NUM : [+-]?[0-9]+ ;
WS : [ \n\t]+ -> skip;
COMMENT : '--' .*? '\n' -> skip;
ERROR : . ;