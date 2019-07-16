// Generated from Rev.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link RevParser}.
 */
public interface RevListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link RevParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(RevParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link RevParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(RevParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code printStat}
	 * labeled alternative in {@link RevParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterPrintStat(RevParser.PrintStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code printStat}
	 * labeled alternative in {@link RevParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitPrintStat(RevParser.PrintStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assignStat}
	 * labeled alternative in {@link RevParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssignStat(RevParser.AssignStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assignStat}
	 * labeled alternative in {@link RevParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssignStat(RevParser.AssignStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IdString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void enterIdString(RevParser.IdStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IdString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void exitIdString(RevParser.IdStringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code literalString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void enterLiteralString(RevParser.LiteralStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code literalString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void exitLiteralString(RevParser.LiteralStringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code concatString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void enterConcatString(RevParser.ConcatStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code concatString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void exitConcatString(RevParser.ConcatStringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code inputString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void enterInputString(RevParser.InputStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code inputString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void exitInputString(RevParser.InputStringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code replaceString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void enterReplaceString(RevParser.ReplaceStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code replaceString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 */
	void exitReplaceString(RevParser.ReplaceStringContext ctx);
}