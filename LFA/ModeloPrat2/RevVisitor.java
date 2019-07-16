// Generated from Rev.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link RevParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface RevVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link RevParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(RevParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code printStat}
	 * labeled alternative in {@link RevParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrintStat(RevParser.PrintStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assignStat}
	 * labeled alternative in {@link RevParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignStat(RevParser.AssignStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IdString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdString(RevParser.IdStringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code literalString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLiteralString(RevParser.LiteralStringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code concatString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConcatString(RevParser.ConcatStringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code inputString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInputString(RevParser.InputStringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code replaceString}
	 * labeled alternative in {@link RevParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReplaceString(RevParser.ReplaceStringContext ctx);
}