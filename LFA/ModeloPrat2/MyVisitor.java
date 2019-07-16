
// Generated from Rev.g4 by ANTLR 4.7.2
import java.util.*;

import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;

public class MyVisitor extends RevBaseVisitor<Object> {

	Map<String, String> map = new HashMap<>();
	Scanner sc = new Scanner(System.in);

	@Override
	public Object visitProgram(RevParser.ProgramContext ctx) {
		return visitChildren(ctx);
	}

	@Override
	public Object visitPrintStat(RevParser.PrintStatContext ctx) {
		System.out.println((String) visit(ctx.string()));
		return null;
	}

	@Override
	public Object visitAssignStat(RevParser.AssignStatContext ctx) {
		String var = ctx.ID().getText();
		String val = (String) visit(ctx.string());

		map.put(var, val);
		return null;
	}

	@Override
	public Object visitLiteralString(RevParser.LiteralStringContext ctx) {
		return getString(ctx.STRING().getText());
	}

	@Override
	public Object visitIdString(RevParser.IdStringContext ctx) {
		String key = ctx.ID().getText();
		if (!map.containsKey(key)) {
			System.err.println("ERROR: var not found!");
			System.exit(1);
		}
		return map.get(key);
	}

	@Override
	public Object visitInputString(RevParser.InputStringContext ctx) {
		System.out.println(ctx.STRING());
		return sc.nextLine();
	}

	@Override
	public Object visitConcatString(RevParser.ConcatStringContext ctx) {
		String s1 = (String) visit(ctx.str1);
		String s2 = (String) visit(ctx.str2);
		return s1 + "" + s2;
	}

	@Override
	public Object visitReplaceString(RevParser.ReplaceStringContext ctx) {
		String str1 = (String) visit(ctx.s1);
		String str2 = (String) visit(ctx.s2);
		String str3 = (String) visit(ctx.s3);
		return str1.replaceAll(str2, str3);
	}

	public String getString(String s) {
		return s.replaceAll("\"", "");
	}
}