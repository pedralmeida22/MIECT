// Generated from Vector.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link VectorParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface VectorVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link VectorParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(VectorParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ShowStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShowStat(VectorParser.ShowStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssigmentStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssigmentStat(VectorParser.AssigmentStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code RealValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRealValue(VectorParser.RealValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IdValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdValue(VectorParser.IdValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SignalValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSignalValue(VectorParser.SignalValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenValue(VectorParser.ParenValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code VectorValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVectorValue(VectorParser.VectorValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AddSubValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddSubValue(VectorParser.AddSubValueContext ctx);
	/**
	 * Visit a parse tree produced by {@link VectorParser#vector}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVector(VectorParser.VectorContext ctx);
}