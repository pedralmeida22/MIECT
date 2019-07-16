grammar Calculator;

program : (stat NEWLINE)* EOF ;

stat : expr         #ExprStat
     | assigment    #AssgmentStat
     ;

assigment : ID '=' expr ;

expr : e1=expr op=('*'|'/') e2=expr     #MultDiv
     | e1=expr op=('+'|'-') e2=expr     #AddSub
     | INT                              #Number
     | '(' expr ')'                     #Parentesis
     | ID                               #Variable
     ;

ID : [a-zA-Z]+ ;
INT : [0-9]+ ;
NEWLINE : '\r'? '\n' ;
WS : [ \t]+ -> skip ;