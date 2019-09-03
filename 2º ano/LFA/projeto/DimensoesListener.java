// Generated from Dimensoes.g4 by ANTLR 4.7.2

import java.util.*;

import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link DimensoesParser}.
 */
public interface DimensoesListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link DimensoesParser#main}.
	 * @param ctx the parse tree
	 */
	void enterMain(DimensoesParser.MainContext ctx);
	/**
	 * Exit a parse tree produced by {@link DimensoesParser#main}.
	 * @param ctx the parse tree
	 */
	void exitMain(DimensoesParser.MainContext ctx);
	/**
	 * Enter a parse tree produced by {@link DimensoesParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(DimensoesParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link DimensoesParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(DimensoesParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link DimensoesParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(DimensoesParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link DimensoesParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(DimensoesParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link DimensoesParser#convert}.
	 * @param ctx the parse tree
	 */
	void enterConvert(DimensoesParser.ConvertContext ctx);
	/**
	 * Exit a parse tree produced by {@link DimensoesParser#convert}.
	 * @param ctx the parse tree
	 */
	void exitConvert(DimensoesParser.ConvertContext ctx);
	/**
	 * Enter a parse tree produced by {@link DimensoesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(DimensoesParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DimensoesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(DimensoesParser.ExpressionContext ctx);
}