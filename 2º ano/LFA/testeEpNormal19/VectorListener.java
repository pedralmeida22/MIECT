// Generated from Vector.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link VectorParser}.
 */
public interface VectorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link VectorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(VectorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link VectorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(VectorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ShowStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterShowStat(VectorParser.ShowStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ShowStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitShowStat(VectorParser.ShowStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssigmentStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssigmentStat(VectorParser.AssigmentStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssigmentStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssigmentStat(VectorParser.AssigmentStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code RealValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void enterRealValue(VectorParser.RealValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code RealValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void exitRealValue(VectorParser.RealValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IdValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void enterIdValue(VectorParser.IdValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IdValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void exitIdValue(VectorParser.IdValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SignalValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void enterSignalValue(VectorParser.SignalValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SignalValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void exitSignalValue(VectorParser.SignalValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParenValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void enterParenValue(VectorParser.ParenValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParenValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void exitParenValue(VectorParser.ParenValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VectorValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void enterVectorValue(VectorParser.VectorValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VectorValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void exitVectorValue(VectorParser.VectorValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddSubValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void enterAddSubValue(VectorParser.AddSubValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddSubValue}
	 * labeled alternative in {@link VectorParser#value}.
	 * @param ctx the parse tree
	 */
	void exitAddSubValue(VectorParser.AddSubValueContext ctx);
	/**
	 * Enter a parse tree produced by {@link VectorParser#vector}.
	 * @param ctx the parse tree
	 */
	void enterVector(VectorParser.VectorContext ctx);
	/**
	 * Exit a parse tree produced by {@link VectorParser#vector}.
	 * @param ctx the parse tree
	 */
	void exitVector(VectorParser.VectorContext ctx);
}