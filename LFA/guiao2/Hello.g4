grammar Hello;              // define a grammar called hello
top : (greetings | bye)* ; 
greetings : 'hello' names {
    System.out.println("Ola " + $names.list);
};     // match keyword hello followed by an identifier
bye : 'bye' names {
    System.out.println("Adeus " + $names.list);
};
names returns[String list=""] : ( ID { $list = $list + ($list.isEmpty() ? "" : ", ") + $ID.text; })+;
ID : [a-zA-Z] [A-Za-z0-9_]* ;               // match lower-case identifiers
WS : [ \t\r\n]+ -> skip ;   // skip spaces, tabs, newlines, \r (windows)
