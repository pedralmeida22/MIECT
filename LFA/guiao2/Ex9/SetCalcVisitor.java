// Generated from SetCalc.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link SetCalcParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface SetCalcVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link SetCalcParser#main}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMain(SetCalcParser.MainContext ctx);
	/**
	 * Visit a parse tree produced by {@link SetCalcParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStat(SetCalcParser.StatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprVar}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprVar(SetCalcParser.ExprVarContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprAssig}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprAssig(SetCalcParser.ExprAssigContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprParen}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprParen(SetCalcParser.ExprParenContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprSub}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprSub(SetCalcParser.ExprSubContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprIntersect}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprIntersect(SetCalcParser.ExprIntersectContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprAdd}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprAdd(SetCalcParser.ExprAddContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprSet}
	 * labeled alternative in {@link SetCalcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprSet(SetCalcParser.ExprSetContext ctx);
	/**
	 * Visit a parse tree produced by {@link SetCalcParser#set}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSet(SetCalcParser.SetContext ctx);
	/**
	 * Visit a parse tree produced by {@link SetCalcParser#elem}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitElem(SetCalcParser.ElemContext ctx);
}