
// Generated from Vector.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;
import java.util.*;
import java.util.stream.*;

public class MyVisitor extends VectorBaseVisitor<Object> {

	Map<String, Value> map = new HashMap<>();

	@Override
	public Object visitProgram(VectorParser.ProgramContext ctx) {
		return visitChildren(ctx);
	}

	@Override
	public Object visitShowStat(VectorParser.ShowStatContext ctx) {
		System.out.println((visit(ctx.value()).toString()));
		return visitChildren(ctx);
	}

	@Override
	public Object visitAssigmentStat(VectorParser.AssigmentStatContext ctx) {
		String var = ctx.ID().getText();
		Value val = (Value) visit(ctx.value());
		map.put(var, val);
		return visitChildren(ctx);
	}

	@Override
	public Object visitVectorValue(VectorParser.VectorValueContext ctx) {
		return visit(ctx.vector());
	}

	@Override
	public Object visitRealValue(VectorParser.RealValueContext ctx) {
		return new Real(Double.parseDouble(ctx.getText()));
	}

	@Override
	public Object visitIdValue(VectorParser.IdValueContext ctx) {
		String key = ctx.ID().getText();
		if (!map.containsKey(key)) {
			System.out.println("ERROR: variable - " + key + " not found!");
			System.exit(1);
		}
		Value v = map.get(key);
		return v;
	}

	@Override
	public Object visitVector(VectorParser.VectorContext ctx) {
		Vector v = new Vector();
		v.list = ctx.REAL().stream().map(x -> new Real(Double.parseDouble(x.getText()))).collect(Collectors.toList());
		return v;
	}

	@Override
	public Object visitAddSubValue(VectorParser.AddSubValueContext ctx) {
		Value val1 = (Value) visit(ctx.v1);
		Value val2 = (Value) visit(ctx.v2);

		if (!((val1 instanceof Real && val2 instanceof Real) || (val1 instanceof Vector && val2 instanceof Vector))) {
			System.err.println("ERROR: cannot add/subtract between Number and Vector!");
			System.exit(1);
		}
		if (ctx.op.getText().equals("+"))
			return val1.sum(val2);
		return val1.sub(val2);
	}

	@Override
	public Object visitSignalValue(VectorParser.SignalValueContext ctx) {
		Value v = (Value) visit(ctx.value());
		if (ctx.op.getText().equals('-')) {
			v.invert();
		}
		return v;
	}

	@Override
	public Object visitParenValue(VectorParser.ParenValueContext ctx) {
		return visit(ctx.value());
	}
}