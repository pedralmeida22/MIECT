
// Generated from Calculator.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;
import java.util.*;

public class ConvertToSuffix<String> extends CalculatorBaseVisitor<String> {

	@Override
	public String visitProgram(CalculatorParser.ProgramContext ctx) {
		java.lang.String res = "";
		Iterator<CalculatorParser.StatContext> iter = ctx.stat().iterator();
		while (iter.hasNext()) {
			res += visit(iter.next()) + "\n";
		}
		return res;
	}

	@Override
	public String visitExprStat(CalculatorParser.ExprStatContext ctx) {
		return visit(ctx.expr());
	}

	@Override
	public String visitAssgmentStat(CalculatorParser.AssgmentStatContext ctx) {
		return visit(ctx.assigment());
	}

	@Override
	public String visitAssigment(CalculatorParser.AssigmentContext ctx) {
		return ctx.ID().getText() + " " + visit(ctx.expr()) + " =";
	}

	@Override
	public String visitVariable(CalculatorParser.VariableContext ctx) {
		return ctx.ID().getText();
	}

	@Override
	public String visitNumber(CalculatorParser.NumberContext ctx) {
		return ctx.INT().getText();
	}

	@Override
	public String visitAddSub(CalculatorParser.AddSubContext ctx) {
		return visit(ctx.e1) + " " + visit(ctx.e2) + " " + ctx.op.getText();
	}

	@Override
	public String visitParentesis(CalculatorParser.ParentesisContext ctx) {
		return visit(ctx.expr());
	}

	@Override
	public String visitMultDiv(CalculatorParser.MultDivContext ctx) {
		return visit(ctx.e1) + " " + visit(ctx.e2) + " " + ctx.op.getText();
	}
}