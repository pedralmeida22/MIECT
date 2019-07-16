
// Generated from Modelo.g4 by ANTLR 4.7.2
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;

public class MyVisitor extends ModeloBaseVisitor<String> {
	protected Map<String, String> map = new HashMap<>();
	Scanner sc = new Scanner(System.in);

	@Override
	public String visitProgram(ModeloParser.ProgramContext ctx) {
		return visitChildren(ctx);
	}

	@Override
	public String visitStrStat(ModeloParser.StrStatContext ctx) {
		System.out.println((String) visit(ctx.string()));
		return visitChildren(ctx);
	}

	@Override
	public String visitIdStat(ModeloParser.IdStatContext ctx) {
		String var = ctx.ID().getText();
		String val = visit(ctx.string());
		map.put(var, val);
		return visitChildren(ctx);
	}

	@Override
	public String visitStrStr(ModeloParser.StrStrContext ctx) {
		return getStr(ctx.STRING().getText());
	}

	@Override
	public String visitIdStr(ModeloParser.IdStrContext ctx) {
		String var = ctx.ID().getText();
		if (!map.containsKey(var)) {
			System.out.println("ERROR: variable " + var + "not found!");
			System.exit(1);
		}

		return map.get(var);
	}

	@Override
	public String visitInputStr(ModeloParser.InputStrContext ctx) {
		System.out.println(ctx.STRING().getText());
		String str = sc.nextLine();
		return str;
	}

	@Override
	public String visitReplaceStr(ModeloParser.ReplaceStrContext ctx) {
		return (String) visit(ctx.s1).replaceAll(visit(ctx.s2), visit(ctx.s3));
	}

	@Override
	public String visitConcatStr(ModeloParser.ConcatStrContext ctx) {
		return (String) visit(ctx.s1) + visit(ctx.s2);
	}

	public String getStr(String s) {
		return s.replaceAll("\"", "");
	}
}