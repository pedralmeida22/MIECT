// Generated from SetCalc.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link SetCalcParser}.
 */
public interface SetCalcListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link SetCalcParser#main}.
	 * @param ctx the parse tree
	 */
	void enterMain(SetCalcParser.MainContext ctx);
	/**
	 * Exit a parse tree produced by {@link SetCalcParser#main}.
	 * @param ctx the parse tree
	 */
	void exitMain(SetCalcParser.MainContext ctx);
	/**
	 * Enter a parse tree produced by {@link SetCalcParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(SetCalcParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link SetCalcParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(SetCalcParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprVar}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprVar(SetCalcParser.ExprVarContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprVar}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprVar(SetCalcParser.ExprVarContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAssig}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAssig(SetCalcParser.ExprAssigContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAssig}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAssig(SetCalcParser.ExprAssigContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParen}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParen(SetCalcParser.ExprParenContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParen}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParen(SetCalcParser.ExprParenContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprSub}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprSub(SetCalcParser.ExprSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprSub}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprSub(SetCalcParser.ExprSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprIntersect}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprIntersect(SetCalcParser.ExprIntersectContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprIntersect}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprIntersect(SetCalcParser.ExprIntersectContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAdd}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAdd(SetCalcParser.ExprAddContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAdd}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAdd(SetCalcParser.ExprAddContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprSet}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprSet(SetCalcParser.ExprSetContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprSet}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprSet(SetCalcParser.ExprSetContext ctx);
	/**
	 * Enter a parse tree produced by {@link SetCalcParser#set}.
	 * @param ctx the parse tree
	 */
	void enterSet(SetCalcParser.SetContext ctx);
	/**
	 * Exit a parse tree produced by {@link SetCalcParser#set}.
	 * @param ctx the parse tree
	 */
	void exitSet(SetCalcParser.SetContext ctx);
	/**
	 * Enter a parse tree produced by {@link SetCalcParser#elem}.
	 * @param ctx the parse tree
	 */
	void enterElem(SetCalcParser.ElemContext ctx);
	/**
	 * Exit a parse tree produced by {@link SetCalcParser#elem}.
	 * @param ctx the parse tree
	 */
	void exitElem(SetCalcParser.ElemContext ctx);
}