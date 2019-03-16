grammar SuffixCalculator;

program :
    stat * EOF
    ;
stat :
    expr NEWLINE
    | NEWLINE
    ;
expr : 
    expr expr op=('*'|'/'|'+'|'-')
    | Number
    ;
Number: [0-9]+('.'[0-9]+)?;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;