grammar Hello;
top : (greetings | bye)* EOF ;
greetings : 'hello' names { System.out.println("Ola " + $names.list); } ;
bye : 'bye' names { System.out.println("Adeus " + $names.list); } ;
names returns[String list=""] : ( ID { $list = $list + ( $list.isEmpty() ? "" : ", ")
                                             + $ID.text; } 
                                )+ ;
ID : [a-zA-Z0-9_]+ ;
WS : [ \t\n]+ -> skip ;