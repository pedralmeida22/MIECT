import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class NumbersMain {
   public static void main(String[] args) throws Exception {
      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(System.in);
      // create a lexer that feeds off of input CharStream:
      NumbersLexer lexer = new NumbersLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      NumbersParser parser = new NumbersParser(tokens);
      // replace error listener:
      //parser.removeErrorListeners(); // remove ConsoleErrorListener
      //parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at file rule:
      ParseTree tree = parser.file();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
      }
   }
}
