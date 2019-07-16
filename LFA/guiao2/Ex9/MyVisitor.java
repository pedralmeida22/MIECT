
// Generated from SetCalc.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;
import java.util.*;

public class MyVisitor extends SetCalcBaseVisitor<Set<String>> {

	protected Map<String, Set<String>> map = new HashMap<>();
	protected Set<String> tempSet;

	@Override
	public Set<String> visitMain(SetCalcParser.MainContext ctx) {
		return visitChildren(ctx);
	}

	@Override
	public Set<String> visitStat(SetCalcParser.StatContext ctx) {
		Set<String> result = visit(ctx.expr());
		String str = result.toString();
		str = "{" + str.substring(1, str.length() - 1).replaceAll(" ", "") + "}";
		System.out.println("result: " + str);
		return result;
	}

	@Override
	public Set<String> visitExprVar(SetCalcParser.ExprVarContext ctx) {
		Set<String> res = null;
		String var = ctx.VAR().getText();
		if (!map.containsKey(var)) {
			System.err.println("ERROR: variable -" + var + "- not defined!");
			System.exit(1);
		}
		res = map.get(var);
		return res;
	}

	@Override
	public Set<String> visitExprAssig(SetCalcParser.ExprAssigContext ctx) {
		Set<String> res = visit(ctx.e);
		String var = ctx.VAR().getText();
		map.put(var, res);
		return res;
	}

	@Override
	public Set<String> visitExprParen(SetCalcParser.ExprParenContext ctx) {
		return visitChildren(ctx.e);
	}

	@Override
	public Set<String> visitExprSub(SetCalcParser.ExprSubContext ctx) {
		Set<String> res = new HashSet<>();
		Set<String> s1 = visit(ctx.e1);
		Set<String> s2 = visit(ctx.e2);
		Iterator<String> iter = s1.iterator();
		while (iter.hasNext()) {
			String str = iter.next();
			if (!s2.contains(str))
				res.add(str);
		}

		return res;
	}

	@Override
	public Set<String> visitExprIntersect(SetCalcParser.ExprIntersectContext ctx) {
		Set<String> res = new HashSet<>();
		Set<String> s1 = visit(ctx.e1);
		Set<String> s2 = visit(ctx.e2);
		Iterator<String> iter = s1.iterator();
		while (iter.hasNext()) {
			String str = iter.next();
			if (s2.contains(str))
				res.add(str);
		}
		return res;
	}

	@Override
	public Set<String> visitExprAdd(SetCalcParser.ExprAddContext ctx) {
		Set<String> res = new HashSet<>();
		Set<String> s1 = visit(ctx.e1);
		Set<String> s2 = visit(ctx.e2);
		Iterator<String> iter = s1.iterator();
		while (iter.hasNext()) {
			String str = iter.next();
			res.add(str);
		}
		return res;
	}

	@Override
	public Set<String> visitExprSet(SetCalcParser.ExprSetContext ctx) {
		return visitChildren(ctx.set());
	}

	@Override
	public Set<String> visitSet(SetCalcParser.SetContext ctx) {
		tempSet = new HashSet<>();
		visitChildren(ctx);
		return tempSet;
	}

	@Override
	public Set<String> visitElem(SetCalcParser.ElemContext ctx) {
		tempSet.add(ctx.getText());
		return null;
	}
}