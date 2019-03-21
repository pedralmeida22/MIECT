grammar Calculator ;
program : stat* EOF ;
stat : expr NEWLINE { System.out.println($expr.v); }
     | NEWLINE 
     ;
expr returns[double v]
     : left=expr op=( '*' | '/' ) rigth=expr { if($op.text.equals("*"))
                                                    $v = $left.v * $rigth.v;
                                               else $v = $left.v / $rigth.v; }

     | left=expr op=( '+' | '-' ) rigth=expr { if($op.text.equals("+"))
                                                        $v = $left.v + $rigth.v;
                                                    else $v = $left.v - $rigth.v; }
     | INT              { $v = Double.parseDouble($INT.text); }
     | '(' e=expr ')'   { $v = $e.v; }         
     ;
INT : [0-9]+ ;      
NEWLINE : '\r'? '\n' ;          
WS: [ \t]+ -> skip ; 
