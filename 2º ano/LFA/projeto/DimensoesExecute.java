import java.util.*;

public class DimensoesExecute extends DimensoesBaseVisitor<List<Integer>> {

	public Map<String,List<Integer>> table(){
		return DimensoesParser.table;
	}
	
	public Map<String,ConvertSymbol> convertTable(){
		return DimensoesParser.convertTable;
	}
	
	@Override public List<Integer> visitDeclaration(DimensoesParser.DeclarationContext ctx) { 
		String id = ctx.ID().getText();
		List<Integer> res = visit(ctx.expression());
		DimensoesParser.table.put(id,res);
		return res;
	}
	
	
	@Override public List<Integer> visitExpression(DimensoesParser.ExpressionContext ctx) { 
		String res = ctx.ARRAY().getText();
		res = res.substring(1, res.length()-1);
		String[] arr = res.split(",");
		List<Integer> lista = new ArrayList<>();
		for(int i = 0; i<arr.length;i++){
			lista.add(Integer.parseInt(arr[i]));
		}
		return lista;
	} 

	@Override public List<Integer> visitConvert(DimensoesParser.ConvertContext ctx) { 
		List<Integer> res = null;
		double valor = Double.parseDouble(ctx.NUM().getText());
		String id = ctx.id1.getText();
		String id2 = ctx.id2.getText();
		ConvertSymbol temp = new ConvertSymbol(id2,valor);
		DimensoesParser.convertTable.put(id, temp);
		return res;
	}
}