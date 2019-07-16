grammar Vector;

program : stat* EOF ;

stat : 'show' value    #ShowStat
     | value '->' ID   #AssigmentStat
     ;

value  : '(' value ')'                      #ParenValue
       | op=('+'|'-') value                       #SignalValue
       | v1=value op=('+'|'-') v2=value     #AddSubValue
       | vector                             #VectorValue
       | REAL                               #RealValue
       | ID                                 #IdValue
       ;

vector: '[' REAL (',' REAL)* ']' ;

REAL :  [1-9]+ ('.' [0-9]+)?  ;
ID : [a-z]([a-z0-9]+)? ;

COMMENT : '#' .*? '\n' -> skip ;
WS : [ \n\t]+ -> skip ;
