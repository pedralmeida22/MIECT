// Generated from SuffixCalculator.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link SuffixCalculatorParser}.
 */
public interface SuffixCalculatorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link SuffixCalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(SuffixCalculatorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link SuffixCalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(SuffixCalculatorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link SuffixCalculatorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(SuffixCalculatorParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link SuffixCalculatorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(SuffixCalculatorParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link SuffixCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(SuffixCalculatorParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link SuffixCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(SuffixCalculatorParser.ExprContext ctx);
}