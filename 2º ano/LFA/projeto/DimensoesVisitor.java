// Generated from Dimensoes.g4 by ANTLR 4.7.2

import java.util.*;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link DimensoesParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface DimensoesVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link DimensoesParser#main}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMain(DimensoesParser.MainContext ctx);
	/**
	 * Visit a parse tree produced by {@link DimensoesParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStat(DimensoesParser.StatContext ctx);
	/**
	 * Visit a parse tree produced by {@link DimensoesParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclaration(DimensoesParser.DeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link DimensoesParser#convert}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConvert(DimensoesParser.ConvertContext ctx);
	/**
	 * Visit a parse tree produced by {@link DimensoesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(DimensoesParser.ExpressionContext ctx);
}