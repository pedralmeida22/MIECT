// Generated from VarGrammar.g4 by ANTLR 4.7.2

import java.util.*;

import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link VarGrammarParser}.
 */
public interface VarGrammarListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#main}.
	 * @param ctx the parse tree
	 */
	void enterMain(VarGrammarParser.MainContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#main}.
	 * @param ctx the parse tree
	 */
	void exitMain(VarGrammarParser.MainContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#entryList}.
	 * @param ctx the parse tree
	 */
	void enterEntryList(VarGrammarParser.EntryListContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#entryList}.
	 * @param ctx the parse tree
	 */
	void exitEntryList(VarGrammarParser.EntryListContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#instList}.
	 * @param ctx the parse tree
	 */
	void enterInstList(VarGrammarParser.InstListContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#instList}.
	 * @param ctx the parse tree
	 */
	void exitInstList(VarGrammarParser.InstListContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#entry}.
	 * @param ctx the parse tree
	 */
	void enterEntry(VarGrammarParser.EntryContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#entry}.
	 * @param ctx the parse tree
	 */
	void exitEntry(VarGrammarParser.EntryContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#instruction}.
	 * @param ctx the parse tree
	 */
	void enterInstruction(VarGrammarParser.InstructionContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#instruction}.
	 * @param ctx the parse tree
	 */
	void exitInstruction(VarGrammarParser.InstructionContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#if_cond}.
	 * @param ctx the parse tree
	 */
	void enterIf_cond(VarGrammarParser.If_condContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#if_cond}.
	 * @param ctx the parse tree
	 */
	void exitIf_cond(VarGrammarParser.If_condContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#while_cond}.
	 * @param ctx the parse tree
	 */
	void enterWhile_cond(VarGrammarParser.While_condContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#while_cond}.
	 * @param ctx the parse tree
	 */
	void exitWhile_cond(VarGrammarParser.While_condContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(VarGrammarParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(VarGrammarParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#assigment}.
	 * @param ctx the parse tree
	 */
	void enterAssigment(VarGrammarParser.AssigmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#assigment}.
	 * @param ctx the parse tree
	 */
	void exitAssigment(VarGrammarParser.AssigmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#show}.
	 * @param ctx the parse tree
	 */
	void enterShow(VarGrammarParser.ShowContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#show}.
	 * @param ctx the parse tree
	 */
	void exitShow(VarGrammarParser.ShowContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#condition}.
	 * @param ctx the parse tree
	 */
	void enterCondition(VarGrammarParser.ConditionContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#condition}.
	 * @param ctx the parse tree
	 */
	void exitCondition(VarGrammarParser.ConditionContext ctx);
	/**
	 * Enter a parse tree produced by {@link VarGrammarParser#increment}.
	 * @param ctx the parse tree
	 */
	void enterIncrement(VarGrammarParser.IncrementContext ctx);
	/**
	 * Exit a parse tree produced by {@link VarGrammarParser#increment}.
	 * @param ctx the parse tree
	 */
	void exitIncrement(VarGrammarParser.IncrementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressDimensao}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressDimensao(VarGrammarParser.ExpressDimensaoContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressDimensao}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressDimensao(VarGrammarParser.ExpressDimensaoContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressInt}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressInt(VarGrammarParser.ExpressIntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressInt}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressInt(VarGrammarParser.ExpressIntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressParent}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressParent(VarGrammarParser.ExpressParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressParent}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressParent(VarGrammarParser.ExpressParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressAddSub}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressAddSub(VarGrammarParser.ExpressAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressAddSub}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressAddSub(VarGrammarParser.ExpressAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressMulDiv}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressMulDiv(VarGrammarParser.ExpressMulDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressMulDiv}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressMulDiv(VarGrammarParser.ExpressMulDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressReal}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressReal(VarGrammarParser.ExpressRealContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressReal}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressReal(VarGrammarParser.ExpressRealContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressID}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpressID(VarGrammarParser.ExpressIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressID}
	 * labeled alternative in {@link VarGrammarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpressID(VarGrammarParser.ExpressIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code TypeInt}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeInt(VarGrammarParser.TypeIntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code TypeInt}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeInt(VarGrammarParser.TypeIntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code TypeReal}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeReal(VarGrammarParser.TypeRealContext ctx);
	/**
	 * Exit a parse tree produced by the {@code TypeReal}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeReal(VarGrammarParser.TypeRealContext ctx);
	/**
	 * Enter a parse tree produced by the {@code TypeUnit}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeUnit(VarGrammarParser.TypeUnitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code TypeUnit}
	 * labeled alternative in {@link VarGrammarParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeUnit(VarGrammarParser.TypeUnitContext ctx);
}