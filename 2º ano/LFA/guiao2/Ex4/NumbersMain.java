import java.io.File;
import java.util.Scanner;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.*;

public class NumbersMain {
   public static void main(String[] args) throws Exception {
      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(new File("numbers.txt"));
      // create a lexer that feeds off of input CharStream:
      NumbersLexer lexer = new NumbersLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      NumbersParser parser = new NumbersParser(tokens);
      // replace error listener:
      // parser.removeErrorListeners(); // remove ConsoleErrorListener
      // parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at file rule:
      ParseTree tree = parser.file();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
         ParseTreeWalker walker = new ParseTreeWalker();
         ConstructNumberMappings mappings = new ConstructNumberMappings();
         walker.walk(mappings, tree);

         Scanner in = new Scanner(System.in);
         while (in.hasNextLine()) {
            String line = in.nextLine();
            String[] word = line.replace('-', '+').toLowerCase().split(" ");
            for (int i = 0; i < word.length; i++) {
               if (i != 0)
                  System.out.println(" ");
               if (mappings.exists(word[i])) {
                  System.out.println(mappings.value(word[i]).toString());
               } else {
                  System.out.println(word[i]);
               }
               System.out.println(" ");
            }
         }
      }
   }
}
