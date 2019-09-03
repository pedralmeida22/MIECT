grammar Calculator ;

@header { import java.utils.*; }
@members { protected Map<String, Double> map = new HashMap<>(); }

program: (stat { System.out.println($stat.v); } NEWLINE)* EOF ;

stat returns[double v]: 
    expr { $v = $expr.v); }
    | assigment { $v = $assigment.v; }
    ;

assigment returns[double v] : 
    ID '=' expr NEWLINE { $v = $expr.v; 
                          map.put($ID.text, $v); }
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
    | ID            { if(!map.containsKey($ID.text))
                        { System.err.println("ERROR: variable \"" + $ID.text + "\" not found!");
                          System.exit(1);
                        }
                      $v = map.get($ID.text);
                    }
    ;
ID : [a-zA-Z]+ ;
INT : [0-9]+ ;
NEWLINE : '\r'? '\n' ;
WS : [ \t]+ -> skip ;