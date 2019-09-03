grammar Calculator ;
program: stat* EOF ;
stat : expr NEWLINE { System.out.println($expr.v); }
    | NEWLINE
    ;
expr returns[double v] : 
    left=expr op=('*'|'/') right=expr   { if($op.text.equals("*"))
                                            $v = $left.v * $right.v;
                                          else $v = $left.v / $right.v;
                                        }
    | left=expr op=('+'|'-') right=expr { if($op.text.equals("+"))
                                            $v = $left.v + $right.v;
                                          else $v = $left.v - $right.v;
                                        }
    | INT           { $v = Double.parseDouble($INT.text); }
    | '(' e=expr ')'  { $v = $e.v; }
    ;
INT : [0-9]+ ;
NEWLINE : '\r'? '\n' ;
WS : [ \t]+ -> skip ;