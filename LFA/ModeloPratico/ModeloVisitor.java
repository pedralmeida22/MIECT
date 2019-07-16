// Generated from Modelo.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link ModeloParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface ModeloVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link ModeloParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(ModeloParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code strStat}
	 * labeled alternative in {@link ModeloParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStrStat(ModeloParser.StrStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code idStat}
	 * labeled alternative in {@link ModeloParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdStat(ModeloParser.IdStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code idStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdStr(ModeloParser.IdStrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code strStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStrStr(ModeloParser.StrStrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code inputStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInputStr(ModeloParser.InputStrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code replaceStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReplaceStr(ModeloParser.ReplaceStrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code concatStr}
	 * labeled alternative in {@link ModeloParser#string}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConcatStr(ModeloParser.ConcatStrContext ctx);
}