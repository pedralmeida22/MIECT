import static java.lang.System.*;
import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.FileInputStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.stringtemplate.v4.*;

public class VarGrammarMain {
   public static void main(String[] args) throws Exception {
      if(args.length != 2){
         System.err.println("ERROR: Tem que meter 2 ficheiros");
      }

      DimensoesMain dimensoes = new DimensoesMain(args[0]);

      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(new FileInputStream(args[1]));
      // create a lexer that feeds off of input CharStream:
      VarGrammarLexer lexer = new VarGrammarLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      VarGrammarParser parser = new VarGrammarParser(tokens);
      // replace error listener:
      //parser.removeErrorListeners(); // remove ConsoleErrorListener
      //parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at main rule:
      ParseTree tree = parser.main();
       if(!dimensoes.error()){
         System.out.println(args[0] + " is correct");
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            VarGrammarSemCheck visitor0 = new VarGrammarSemCheck(dimensoes.table(),dimensoes.convertTable());
            VarGrammarCompiler visitor1 = new VarGrammarCompiler(dimensoes.table(),dimensoes.convertTable());
            visitor0.visit(tree);
            if(!ErrorHandling.error()){
               ST code = visitor1.visit(tree);
               code.add("name","Output");
               PrintWriter pw = new PrintWriter(new File("Output.c"));
               pw.print(code.render());
               pw.close();
            }
         }
      }
   }
}
