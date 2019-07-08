import java.util.*;


public class VarGrammarSemCheck extends VarGrammarBaseVisitor<Boolean>  {

	private Map<String,List<Integer>> vectorDim;
	private Map<String,ConvertSymbol> convertDim;

	public VarGrammarSemCheck(Map<String,List<Integer>> map,Map<String,ConvertSymbol> map2){
		vectorDim = map;
		convertDim = map2;
	}

	@Override public Boolean visitIf_cond(VarGrammarParser.If_condContext ctx) { return visitChildren(ctx); }

	@Override public Boolean visitWhile_cond(VarGrammarParser.While_condContext ctx) { return visitChildren(ctx); }

	@Override public Boolean visitDeclaration(VarGrammarParser.DeclarationContext ctx) {
		Boolean res = visit(ctx.type()) && visit(ctx.expression());
		String id = ctx.IDENTIFIER().getText();

		if(res){
			if(VarGrammarParser.symbolTable.containsKey(id)){
				ErrorHandling.printError(ctx, "Variable \"" + id + "\" already declared");
				res = false;
			}

			else{
				if(!ctx.type().t_tipo.subtype(ctx.expression().tipo)){
					ErrorHandling.printError(ctx, "Different types!");
					res = false;
				}
				else{
					VarGrammarParser.symbolTable.put(id, new VarSymbol(id, ctx.expression().tipo));
				}
			}
		}

		return res;

	}

	@Override public Boolean visitAssigment(VarGrammarParser.AssigmentContext ctx) {
		String id = ctx.IDENTIFIER().getText();
		Boolean res = visit(ctx.expression());

		if(res){
			if(!VarGrammarParser.symbolTable.containsKey(id)){
				ErrorHandling.printError(ctx, "Variable \"" + id + "\" does not exists");
				res = false;
			}
			else{
				Symbol s = VarGrammarParser.symbolTable.get(id);

				if(!ctx.expression().tipo.subtype(s.type())){
					ErrorHandling.printError(ctx, "Expression type does not conform to variable \"" + id + "\" type");
					res = false;
				}
			}
		}

		return res;
	}

	@Override public Boolean visitIncrement(VarGrammarParser.IncrementContext ctx) {
		String id =  ctx.IDENTIFIER().getText();
		if(!VarGrammarParser.symbolTable.containsKey(id)){
			ErrorHandling.printError(ctx, "Variable \"" + id + "\" does not exist!");
			return false;
		} 
		return true;
	 
	 }

	@Override public Boolean visitShow(VarGrammarParser.ShowContext ctx) {
	    return visit(ctx.expression());
	}

	@Override public Boolean visitCondition(VarGrammarParser.ConditionContext ctx) {
		Boolean res = visit(ctx.e1) && visit(ctx.e2);
		if(res){
			if(!ctx.e1.tipo.subtype(ctx.e2.tipo)){
				ErrorHandling.printError(ctx, "Can't compare different types");
				res = false;
			}else if(!ctx.e1.tipo.equals(ctx.e2.tipo)){ //ve se as dimensoes sao iguais
				ErrorHandling.printError(ctx, "Can't compare different types");
				res = false;
			}
		}
		return res;
	}


	@Override public Boolean visitExpressDimensao(VarGrammarParser.ExpressDimensaoContext ctx) {
		ctx.tipo = new UnitType();
		String id = ctx.IDENTIFIER().getText();
		Boolean res = true;
		Boolean contains = false;
		List<Integer> unidade = new ArrayList<>();

		if(convertDim.containsKey(id)){
			contains =true;
			unidade = vectorDim.get(convertDim.get(id).name());
		}
		if(vectorDim.containsKey(id)){
			contains = true;
			unidade = vectorDim.get(id);
		}

		if(!contains){
			ErrorHandling.printError(ctx, "Dimension \""+id+"\" doens't exist");
			res =false;
		}else
			ctx.tipo.setUnidade(unidade);
		return res;
	}

	@Override public Boolean visitExpressParent(VarGrammarParser.ExpressParentContext ctx) { 
		Boolean res = visit(ctx.expression());
		ctx.tipo = ctx.expression().tipo;

		return res;
	}

	@Override public Boolean visitExpressAddSub(VarGrammarParser.ExpressAddSubContext ctx) {
			Boolean res = visit(ctx.left) && visit(ctx.right);
			if(res){
				if(!ctx.left.tipo.subtype(ctx.right.tipo)){
					ErrorHandling.printError(ctx, "Can't sum/sub different types");
					res = false;
				}else if(!ctx.left.tipo.equals(ctx.right.tipo)){
					ErrorHandling.printError(ctx, "Can't sum/sub different types");
					res = false;
				}
				
				ctx.tipo = fetchType(ctx.left.tipo, ctx.right.tipo);
			}
			return res;
		}

	@Override public Boolean visitExpressMulDiv(VarGrammarParser.ExpressMulDivContext ctx) {
		Boolean res = visit(ctx.left) && visit(ctx.right);
		String op = ctx.op.getText();
		if(res){
			if(op.equals("\\")){
					if(!("unit".equals((ctx.left.tipo.name()))) && "unit".equals(ctx.right.tipo.name())){
						ErrorHandling.printError(ctx, "Can't divide numeric by unit");
						res = false;
				}
			}
			ctx.tipo = fetchType(ctx.left.tipo, ctx.right.tipo);
		}
		return res;
	}

	@Override public Boolean visitExpressReal(VarGrammarParser.ExpressRealContext ctx) {
		ctx.tipo = new RealType();
		return true;
	}

	@Override public Boolean visitExpressInt(VarGrammarParser.ExpressIntContext ctx) {
		ctx.tipo = new IntType();
		return true;
	}


	@Override public Boolean visitExpressID(VarGrammarParser.ExpressIDContext ctx) {
		String id = ctx.IDENTIFIER().getText();
		if(VarGrammarParser.symbolTable.containsKey(id)){
			ctx.tipo = VarGrammarParser.symbolTable.get(id).type();
			return true;
		}
		else{
			ErrorHandling.printError(ctx, "Variable \"" + id + "\" does not exist!");
		 	return false;
		}
	}

	@Override public Boolean visitTypeInt(VarGrammarParser.TypeIntContext ctx) { 
		ctx.t_tipo = new IntType();
		return true; 
	}

	@Override public Boolean visitTypeUnit(VarGrammarParser.TypeUnitContext ctx) { 
		ctx.t_tipo = new UnitType();
		return true;
	}

	@Override public Boolean visitTypeReal(VarGrammarParser.TypeRealContext ctx) { 
		ctx.t_tipo = new RealType();
		return true;
	}


	private Type fetchType(Type t1, Type t2){

		Type res = null;
		if (t1.isNumeric() && t2.isNumeric())
		{
		   if ("real".equals(t1.name()))
			  res = t1;
		   else if ("real".equals(t2.name()))
			  res = t2;
		   else
			  res = t1;
		}
		else{
			if("unit".equals(t1.name()))
				res = t1;
			else 
				res = t2;
		} 
		return res;
	}
}