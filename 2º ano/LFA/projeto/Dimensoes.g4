grammar Dimensoes;

@parser::header {
import java.util.*;
}
@parser::members{
    public static Map<String,List<Integer>> table = new HashMap<>();
    public static Map<String,ConvertSymbol> convertTable = new HashMap<>();
}

main: stat* EOF;

stat:   declaration
        |convert;

declaration: ID '=' expression;

convert: id1=ID '->' NUM id2=ID;

expression: ARRAY;
ID: [A-Za-z][A-Za-z]*('/' ?[A-Za-z])*;
NUM:[-+]?[0-9]+ ('.' ?[0-9]+)*;
ARRAY: '['NUM ',' NUM ',' NUM  ',' NUM']';
WS: [ \t\r\n]+ -> skip;
COMMENT: '//' .*? '\n' -> skip;
ERROR: .;
