import java.io.File;
import org.stringtemplate.v4.*;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.ParserRuleContext;
import java.util.*;
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;

public class VarGrammarCompiler extends VarGrammarBaseVisitor<ST> {

	protected int varCount = 0;
	protected STGroup stg = null;
	private Map<String, List<Integer>> vectorDim;
	private Map<String,ConvertSymbol> convertDim;

	public VarGrammarCompiler(Map<String, List<Integer>> map,Map<String,ConvertSymbol> map2) {
		vectorDim = map;
		convertDim = map2;
	}

	@Override
	public ST visitMain(VarGrammarParser.MainContext ctx) {
		stg = new STGroupFile("c.stg");
		ST res = stg.getInstanceOf("module");
		res.add("stat", visit(ctx.entryList()));
		return res;

	}

	@Override
	public ST visitEntryList(VarGrammarParser.EntryListContext ctx) {
		ST res = stg.getInstanceOf("stats");
		for (VarGrammarParser.EntryContext ec : ctx.entry())
			res.add("stat", visit(ec));
		return res;
	}

	@Override
	public ST visitInstList(VarGrammarParser.InstListContext ctx) {
		ST res = stg.getInstanceOf("stats");
		for (VarGrammarParser.InstructionContext ec : ctx.instruction())
			res.add("stat", visit(ec));
		return res;
	}

	@Override
	public ST visitIf_cond(VarGrammarParser.If_condContext ctx) {
		ST res = stg.getInstanceOf("stats");
		ST temp = visit(ctx.condition());
		ST cond;
		if ("unit".equals(ctx.condition().e1.tipo.name())) {
			cond = stg.getInstanceOf("UnitCompareTo");
			cond.add("unit1", ctx.condition().varName1);
			cond.add("unit2", ctx.condition().varName2);
			cond.add("op", ctx.condition().COND_OPER().getText());
		} else {
			cond = stg.getInstanceOf("condition");
			cond.add("left", ctx.condition().varName1);
			cond.add("right", ctx.condition().varName2);
			cond.add("op", ctx.condition().COND_OPER().getText());
		}
		ST ifCond = stg.getInstanceOf("if");
		ifCond.add("condition", cond);
		ifCond.add("statif", visit(ctx.instIf));
		ifCond.add("stat", temp);
		res.add("stat", ifCond);
		if (ctx.instElse != null) {
			ST els = stg.getInstanceOf("else");
			els.add("stat", visit(ctx.instElse));
			res.add("stat", els);
		}
		return res;
	}

	@Override
	public ST visitWhile_cond(VarGrammarParser.While_condContext ctx) {
		ST whl = stg.getInstanceOf("while");
		whl.add("stat",visit(ctx.condition()));
		ST cond;
		if("unit".equals(ctx.condition().e1.tipo.name())){
			cond = stg.getInstanceOf("UnitCompareTo");
			cond.add("unit1",ctx.condition().varName1);
			cond.add("unit2",ctx.condition().varName2);
			cond.add("op",ctx.condition().COND_OPER().getText());	
		}else{
			cond = stg.getInstanceOf("condition");
			cond.add("left",ctx.condition().varName1);
			cond.add("right",ctx.condition().varName2);
			cond.add("op",ctx.condition().COND_OPER().getText());
		}
		whl.add("condition",cond);
		whl.add("statWhile",visit(ctx.instList()));
		return whl;
	}

	@Override
	public ST visitDeclaration(VarGrammarParser.DeclarationContext ctx) {
		ST res = stg.getInstanceOf("stats");
		res.add("stat", visit(ctx.expression()));
		String id = ctx.IDENTIFIER().getText();
		Symbol s = VarGrammarParser.symbolTable.get(id);
		s.defineCompilerName(newVarName());
		ST decl;
		if ("unit".equals(s.type().name())) {
			decl = stg.getInstanceOf("declUnit");
			decl.add("var", s.compilerName());
			decl.add("value", ctx.expression().varName);
		} else {
			decl = stg.getInstanceOf("decl");
			decl.add("type", s.type().name());
			decl.add("var", s.compilerName());
			decl.add("value", ctx.expression().varName);
		}
		res.add("stat", decl);
		return res;
	}

	@Override
	public ST visitAssigment(VarGrammarParser.AssigmentContext ctx) {
		ST res = stg.getInstanceOf("assign");
		String id = ctx.IDENTIFIER().getText();
		Symbol s = VarGrammarParser.symbolTable.get(id);
		res.add("stat", visit(ctx.expression()).render());
		res.add("var", s.compilerName());
		res.add("value", ctx.expression().varName);
		return res;
	}

	@Override
	public ST visitShow(VarGrammarParser.ShowContext ctx) {
		ST res;
		ST temp = visit(ctx.expression());
		if ("unit".equals(ctx.expression().tipo.name())) {
			res = stg.getInstanceOf("stats");
			res.add("stat", temp);
			ST show = stg.getInstanceOf("PrintUnit");
			show.add("unit", ctx.expression().varName);
			res.add("stat", show);
		} else {
			res = stg.getInstanceOf("show");
			res.add("stat", temp);
			res.add("type", ctx.expression().tipo.name());
			res.add("expr", ctx.expression().varName);
		}
		return res;
	}

	@Override
	public ST visitCondition(VarGrammarParser.ConditionContext ctx) {
		ST res = stg.getInstanceOf("stats");
		ST left = visit(ctx.e1);
		ST right = visit(ctx.e2);
		res.add("stat", left);
		res.add("stat", right);
		ctx.varName1 = ctx.e1.compiler;
		ctx.varName2 = ctx.e2.compiler;
		return res;
	}

	@Override
	public ST visitIncrement(VarGrammarParser.IncrementContext ctx) {
		String id = ctx.IDENTIFIER().getText();
		Symbol s = VarGrammarParser.symbolTable.get(id);
		ST res;
		if("unit".equals(s.type().name())){
			if("++".equals(ctx.incre.getText())){
				res = stg.getInstanceOf("UnitIncrement");
				res.add("var",s.compilerName());
				return res;
			}else{
				res = stg.getInstanceOf("UnitDecrement");
				res.add("var",s.compilerName());
				return res;
			}
		}else{
			res = stg.getInstanceOf("increDecrement");	
			res.add("var", s.compilerName());
			res.add("op", ctx.incre.getText());
			return res;
		}
	}

	@Override
	public ST visitExpressDimensao(VarGrammarParser.ExpressDimensaoContext ctx) {
		String unidade = ctx.IDENTIFIER().getText();
		int[] lista = ctx.tipo.tipo();
		int convert = 0;
		double convertValue = 0;
		if(convertDim.containsKey(unidade)){
			convert = 1;
			convertValue = convertDim.get(unidade).valor();
		}
		ST res = stg.getInstanceOf("CreateUnit");
		ctx.varName = newVarName();
		res.add("var", ctx.varName);
		res.add("value", ctx.num.getText());
		res.add("m", lista[0]);
		res.add("s", lista[1]);
		res.add("kg", lista[2]);
		res.add("k", lista[3]);
		res.add("convert",convert);
		res.add("convValue",convertValue);
		return res;
	}

	@Override
	public ST visitExpressInt(VarGrammarParser.ExpressIntContext ctx) {
		ST res = stg.getInstanceOf("decl");
		ctx.varName = newVarName();
		res.add("type", "integer");
		res.add("var", ctx.varName);
		res.add("value", ctx.INT().getText());
		return res;
	}

	@Override
	public ST visitExpressParent(VarGrammarParser.ExpressParentContext ctx) {
		ST res = visit(ctx.expression());
		ctx.varName = ctx.expression().varName;
		return res;
	}

	@Override
	public ST visitExpressAddSub(VarGrammarParser.ExpressAddSubContext ctx) {
		ST e1 = visit(ctx.left);
		ST e2 = visit(ctx.right);
		ctx.varName = newVarName();
		if ("unit".equals(ctx.tipo.name())) {
			ST res = stg.getInstanceOf("stats");
			res.add("stat", e1);
			res.add("stat", e2);
			ST op;
			if ("+".equals(ctx.op.getText())) {
				op = stg.getInstanceOf("UnitAdd");
				op.add("var", ctx.varName);
				op.add("unit1", ctx.left.varName);
				op.add("unit2", ctx.right.varName);
				res.add("stat", op);
				return res;
			} else {
				op = stg.getInstanceOf("UnitSub");
				op.add("var", ctx.varName);
				op.add("unit1", ctx.left.varName);
				op.add("unit2", ctx.right.varName);
				res.add("stat", op);
				return res;
			}
		} else {
			return binaryExpression(ctx, e1.render(), e2.render(), ctx.tipo.name(), ctx.varName, ctx.left.varName,
					ctx.op.getText(), ctx.right.varName);
		}
	}

	@Override
	public ST visitExpressMulDiv(VarGrammarParser.ExpressMulDivContext ctx) {
		ST e1 = visit(ctx.left);
		ST e2 = visit(ctx.right);
		ctx.varName = newVarName();
		if ("unit".equals(ctx.tipo.name())) {
			ST res = stg.getInstanceOf("stats");
			res.add("stat", e1);
			res.add("stat", e2);
			ST op;
			if ("*".equals(ctx.op.getText())) {
				if ("unit".equals(ctx.left.tipo.name()) && "unit".equals(ctx.right.tipo.name())) {
					op = stg.getInstanceOf("UnitMult");
					op.add("var", ctx.varName);
					op.add("unit1", ctx.left.varName);
					op.add("unit2", ctx.right.varName);
					res.add("stat", op);
					return res;
				} else if (!("unit".equals(ctx.left.tipo.name()))) {
					op = stg.getInstanceOf("UnitMultConst");
					op.add("var", ctx.varName);
					op.add("const", ctx.left.varName);
					op.add("unit", ctx.right.varName);
					res.add("stat", op);
					return res;
				} else {
					op = stg.getInstanceOf("UnitMultConst");
					op.add("var", ctx.varName);
					op.add("unit", ctx.left.varName);
					op.add("const", ctx.right.varName);
					res.add("stat", op);
					return res;
				}
			} else {
				if ("unit".equals(ctx.left.tipo.name()) && "unit".equals(ctx.right.tipo.name())) {
					op = stg.getInstanceOf("UnitDiv");
					op.add("var", ctx.varName);
					op.add("unit1", ctx.left.varName);
					op.add("unit2", ctx.right.varName);
					res.add("stat", op);
					return res;
				} else if (!("unit".equals(ctx.left.tipo.name()))) {
					op = stg.getInstanceOf("UnitDivConst");
					op.add("var", ctx.varName);
					op.add("const", ctx.left.varName);
					op.add("unit", ctx.right.varName);
					res.add("stat", op);
					return res;
				} else {
					op = stg.getInstanceOf("UnitDivConst");
					op.add("var", ctx.varName);
					op.add("unit", ctx.left.varName);
					op.add("const", ctx.right.varName);
					res.add("stat", op);
					return res;
				}
			}
		} else {
			return binaryExpression(ctx, e1.render(), e2.render(), ctx.tipo.name(), ctx.varName, ctx.left.varName,
					ctx.op.getText(), ctx.right.varName);
		}
	}

	@Override
	public ST visitExpressReal(VarGrammarParser.ExpressRealContext ctx) {
		ST res = stg.getInstanceOf("decl");
		ctx.varName = newVarName();
		res.add("type", "real");
		res.add("var", ctx.varName);
		res.add("value", ctx.REAL().getText());
		return res;
	}

	@Override
	public ST visitExpressID(VarGrammarParser.ExpressIDContext ctx) {
		ST res = stg.getInstanceOf("stats");
		ST decl = stg.getInstanceOf("decl");
		String id = ctx.IDENTIFIER().getText();
		ctx.varName = newVarName();
		ctx.compiler = VarGrammarParser.symbolTable.get(id).compilerName();
		decl.add("type", VarGrammarParser.symbolTable.get(id).type().name());
		decl.add("var", ctx.varName);
		decl.add("value", VarGrammarParser.symbolTable.get(id).compilerName());
		res.add("stat", decl.render());
		return res;
	}

	protected String newVarName() {
		varCount++;
		return "v" + varCount;
	}

	protected ST binaryExpression(ParserRuleContext ctx, String e1Stats, String e2Stats, String type, String var,
			String e1Var, String op, String e2Var) {
		ST res = stg.getInstanceOf("stats");
		res.add("stat", e1Stats);
		res.add("stat", e2Stats);
		ST be = stg.getInstanceOf("binaryExpression");
		be.add("type", type);
		be.add("var", var);
		be.add("e1", e1Var);
		be.add("op", op);
		be.add("e2", e2Var);
		res.add("stat", be.render());
		return res;
	}
}
