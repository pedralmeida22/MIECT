grammar Calculator ;
@header { import java.util.*; }
@members { protected Map<String, Double> symbolTable = new HashMap<>(); }

program : ( stat {System.out.println($stat.v);} NEWLINE) * EOF
        ;

stat returns[double v]
    : expr  { $v = $expr.v; }
    | assigment { $v = $assigment.v; }
    ;

assigment returns[double v]
    : ID '=' expr { $v = $expr.v; symbolTable.put($ID.text, $v); }
    ;

expr returns[double v]
    : left = expr op('*' | '/') rigth = expr { if($op.text.equals("*"))
                                                    $v = $left.v * $rigth.v;
                                                else $v = $left.v / $rigth.v; }
    | left = expr op('+' | '-') rigth = expr { if($op.text.equals("+"))
                                                    $v = $left.v + $rigth.v;
                                                else $v = $left.v - $rigth.v; }
    | INT   { $v = Double.parseDouble($INT.text); }
    | '(' expr ')'  { $v = $expr.v; }
    | ID    { if(!symbolTable.containsKey($ID.text))
                { System.out.println(ERROR: variable \"" + $ID.text + "\" not found!");
                  System.exit(1);}
            $v = symbolTable.get($ID.text); }
    ;
ID : [A-Za-z]+ ;
INT : [0-9]+ ;
NEWLINE : '\r' ? '\n' ;
WS : [ \t]+ -> skip ;