grammar SuffixCalculator ;

program : stat* EOF ;

stat : expr NEWLINE { System.out.println($expr.value); }
    | NEWLINE
    ;

expr returns[double value]: 
    left=expr right=expr op=('*'|'/') { if($op.text.equals("*"))
                                                    $value = $left.value * $right.value;
                                                else $value = $left.value / $right.value;
                                              }
    | left=expr right=expr op=('+'|'-') { if($op.text.equals("+"))
                                                    $value = $left.value + $right.value;
                                                else $value = $left.value - $right.value;
                                              }
    | Number { $value = Double.parseDouble($Number.text); }
    ;
Number : [0-9]+('.'[0-9]+)? ;
NEWLINE: '\r'? '\n' ;
WS : [ \t]+ -> skip;