// Generated from VarGrammar.g4 by ANTLR 4.7.2

import java.util.*;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link VarGrammarParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface VarGrammarVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#main}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMain(VarGrammarParser.MainContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#entryList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEntryList(VarGrammarParser.EntryListContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#instList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInstList(VarGrammarParser.InstListContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#entry}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEntry(VarGrammarParser.EntryContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#instruction}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInstruction(VarGrammarParser.InstructionContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#if_cond}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIf_cond(VarGrammarParser.If_condContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#while_cond}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhile_cond(VarGrammarParser.While_condContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclaration(VarGrammarParser.DeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#assigment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssigment(VarGrammarParser.AssigmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#show}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShow(VarGrammarParser.ShowContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#condition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCondition(VarGrammarParser.ConditionContext ctx);
	/**
	 * Visit a parse tree produced by {@link VarGrammarParser#increment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIncrement(VarGrammarParser.IncrementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressDimensao}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressDimensao(VarGrammarParser.ExpressDimensaoContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressInt}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressInt(VarGrammarParser.ExpressIntContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressParent}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressParent(VarGrammarParser.ExpressParentContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressAddSub}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressAddSub(VarGrammarParser.ExpressAddSubContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressMulDiv}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressMulDiv(VarGrammarParser.ExpressMulDivContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressReal}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressReal(VarGrammarParser.ExpressRealContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressID}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressID(VarGrammarParser.ExpressIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code TypeInt}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeInt(VarGrammarParser.TypeIntContext ctx);
	/**
	 * Visit a parse tree produced by the {@code TypeReal}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeReal(VarGrammarParser.TypeRealContext ctx);
	/**
	 * Visit a parse tree produced by the {@code TypeUnit}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeUnit(VarGrammarParser.TypeUnitContext ctx);
}