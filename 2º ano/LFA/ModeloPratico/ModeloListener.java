// Generated from Modelo.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ModeloParser}.
 */
public interface ModeloListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ModeloParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(ModeloParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link ModeloParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(ModeloParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code strStat}
	 * labeled alternative in {@link ModeloParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStrStat(ModeloParser.StrStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code strStat}
	 * labeled alternative in {@link ModeloParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStrStat(ModeloParser.StrStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code idStat}
	 * labeled alternative in {@link ModeloParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterIdStat(ModeloParser.IdStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code idStat}
	 * labeled alternative in {@link ModeloParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitIdStat(ModeloParser.IdStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code idStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void enterIdStr(ModeloParser.IdStrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code idStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void exitIdStr(ModeloParser.IdStrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code strStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void enterStrStr(ModeloParser.StrStrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code strStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void exitStrStr(ModeloParser.StrStrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code inputStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void enterInputStr(ModeloParser.InputStrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code inputStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void exitInputStr(ModeloParser.InputStrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code replaceStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void enterReplaceStr(ModeloParser.ReplaceStrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code replaceStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void exitReplaceStr(ModeloParser.ReplaceStrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code concatStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void enterConcatStr(ModeloParser.ConcatStrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code concatStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 */
	void exitConcatStr(ModeloParser.ConcatStrContext ctx);
}