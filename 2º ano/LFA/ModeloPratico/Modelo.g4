grammar Modelo ;

program : stat* EOF ;

stat : 'print' string   #strStat
     | ID ':' string    #idStat
     ;

string : STRING                                         #strStr
       | ID                                             #idStr
       | 'input(' STRING ')'                            #inputStr
       | s1=string '+' s2=string                        #concatStr
       | '(' s1=string '/' s2=string '/' s3=string ')'  #replaceStr
       ;

STRING : '"' .*? '"' ;
ID : [a-z][a-z0-9]* ;
COMMENT : '//' .*? '\n' -> skip ;
WS : [ \t\n] -> skip ;