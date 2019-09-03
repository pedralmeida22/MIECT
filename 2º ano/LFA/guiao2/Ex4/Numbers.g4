grammar Numbers;
file : line* EOF ;
line : NUM '-' WORD NL ;

NUM : [0-9]+ ;
WORD : [a-zA-Z]+ ;
NL : '\r'? '\n' ;
WS : [ \t]+ -> skip ;