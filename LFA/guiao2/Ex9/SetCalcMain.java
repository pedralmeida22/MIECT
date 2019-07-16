import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class SetCalcMain {
   public static void main(String[] args) throws Exception {
      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(System.in);
      // create a lexer that feeds off of input CharStream:
      SetCalcLexer lexer = new SetCalcLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      SetCalcParser parser = new SetCalcParser(tokens);
      // replace error listener:
      // parser.removeErrorListeners(); // remove ConsoleErrorListener
      // parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at main rule:
      ParseTree tree = parser.main();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
         MyVisitor visitor0 = new MyVisitor();
         System.out.println(visitor0.visit(tree));
      }
   }
}
