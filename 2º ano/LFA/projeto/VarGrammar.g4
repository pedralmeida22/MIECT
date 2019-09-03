grammar VarGrammar;

@parser::header {
import java.util.*;
}
@parser::members{
    public static Map<String,Symbol> symbolTable = new HashMap<>();
}

main: entryList EOF;

entryList: entry*;

instList: instruction*;

entry: instruction
    | if_cond
    | while_cond
    ;

instruction: 
    declaration
    |assigment 
    |increment
    | show
    ;

if_cond: 'if''(' condition ')''{' instIf=instList '}' ('else''{' instElse=instList'}')?;

while_cond: 'while''(' condition ')' '{' instList '}';

declaration: type IDENTIFIER '=' expression;

assigment : IDENTIFIER '=' expression;

show: 'show' '(' expression ')';

condition returns[String varName1,String varName2]: e1=expression COND_OPER e2=expression;

increment: IDENTIFIER incre=('++' | '--') ;

expression returns[Type tipo, String varName,String compiler]: 
            '(' expression ')'                                  #ExpressParent
            | left=expression op=('*'|'\\') right=expression     #ExpressMulDiv
            | left=expression op=('+'|'-') right=expression     #ExpressAddSub
            | num=(REAL|INT) IDENTIFIER                         #ExpressDimensao
            | REAL                                              #ExpressReal 
            | INT                                              #ExpressInt
            | IDENTIFIER                                        #ExpressID
            
            ; 

type returns[Type t_tipo] : 
    'integer' #TypeInt
    |'real' #TypeReal
    | 'unidade' #TypeUnit
    ;


COND_OPER: '<' | '>' | '<=' | '>=' | '==' | '!=';
IDENTIFIER :[a-zA-Z][a-zA-Z_/0-9]*;
INT: [+-]?[0-9]+;
REAL : INT '.' INT;
WHITESPACE: [ \t\r\n]+ -> skip;
COMMENT : '//' .*? '\n' -> skip;
ERROR: .;
