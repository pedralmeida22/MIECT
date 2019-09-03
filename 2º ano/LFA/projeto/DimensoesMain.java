import java.io.File;
import java.io.FileInputStream;
import java.util.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;


public class DimensoesMain {

   private Map<String,List<Integer>> vectorDim;
   private Map<String,ConvertSymbol> convertDim;
   private Boolean error = false;

   public  DimensoesMain(String ficheiro) throws Exception {
      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(new FileInputStream(ficheiro));
      // create a lexer that feeds off of input CharStream:
      DimensoesLexer lexer = new DimensoesLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      DimensoesParser parser = new DimensoesParser(tokens);
      // replace error listener:
      //parser.removeErrorListeners(); // remove ConsoleErrorListener
      //parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at main rule:
      ParseTree tree = parser.main();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
         DimensoesSemCheck visitor0 = new DimensoesSemCheck();
         DimensoesExecute visitor1 = new DimensoesExecute();
         visitor0.visit(tree);
         error = visitor0.error();
         if(!visitor0.error()){
            visitor1.visit(tree);
            vectorDim = visitor1.table();
            convertDim = visitor1.convertTable();

         }
         
      }
   }

   public Map<String,List<Integer>> table(){
      return vectorDim;
   }

   public Map<String,ConvertSymbol> convertTable(){
      return convertDim;
   }

   public Boolean error(){
      return error;
   }
}
