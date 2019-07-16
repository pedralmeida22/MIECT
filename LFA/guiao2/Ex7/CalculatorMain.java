import java.util.Scanner;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class CalculatorMain {
   public static void main(String[] args) throws Exception {
      Scanner sc = new Scanner(System.in);
      String lineText = null;
      int lineNum = 1;
      if (sc.hasNextLine())
         lineText = sc.nextLine();
      CalculatorParser parser = new CalculatorParser(null);
      // replace error listener:
      // parser.removeErrorListeners(); // remove ConsoleErrorListener
      // parser.addErrorListener(new ErrorHandlingListener());
      ConvertToSuffix visitor0 = new ConvertToSuffix();
      while (lineText != null) {
         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromString(lineText + "\n");
         // create a lexer that feeds off of input CharStream:
         CalculatorLexer lexer = new CalculatorLexer(input);
         lexer.setLine(lineNum);
         lexer.setCharPositionInLine(0);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         parser.setInputStream(tokens);
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            System.out.println(visitor0.visit(tree));
         }
         if (sc.hasNextLine())
            lineText = sc.nextLine();
         else
            lineText = null;
         lineNum++;
      }
   }
}
