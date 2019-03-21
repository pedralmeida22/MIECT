grammar SuffixCalculator;

program :
    stat * EOF
    ;
stat :
    expr NEWLINE { System.out.println($expr.v); }
    | NEWLINE
    ;
expr returns[double v]
    : left=expr rigth=expr op=( '*' | '/' ) { if($op.text.equals("*"))
                                                    $v = $left.v * $rigth.v;
                                               else $v = $left.v / $rigth.v; }

     | left=expr rigth=expr op=( '+' | '-' ) { if($op.text.equals("+"))
                                                        $v = $left.v + $rigth.v;
                                               else $v = $left.v - $rigth.v; }
    | Number           { $v = Double.parseDouble($Number.text); }
    | '(' e=expr ')'   { $v = $e.v; }
    ;
Number: [0-9]+('.'[0-9]+)?;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;