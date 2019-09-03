grammar Rev ; 

program : stat* EOF ;

stat : 'print' string   #printStat
     | ID ':' string    #assignStat
     ;

string : str1=string '+' str2=string                    #concatString
       | 'input(' STRING ')'                            #inputString
       | '(' s1=string '/' s2=string '/' s3=string ')'  #replaceString
       | STRING                                         #literalString
       | ID                                             #IdString
       ;

STRING : '"' .*? '"' ;
ID : [a-z][a-z0-9]* ;
WS : [ \n\t] -> skip ;
COM : '//' .*? '\n' ;
