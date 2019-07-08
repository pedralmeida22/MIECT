grammar Calculator ;

@header { import java.utils.*; }
@members { protected Map<String, Double> map = new HashMap<>(); }

program: stat* EOF ;
stat : expr NEWLINE { System.out.println($expr.v); }
    | NEWLINE
    ;
assigment : ID '=' expr NEWLINE ;

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
ID : [a-zA-Z] ;
INT : [0-9]+ ;
NEWLINE : '\r'? '\n' ;
WS : [ \t]+ -> skip ;