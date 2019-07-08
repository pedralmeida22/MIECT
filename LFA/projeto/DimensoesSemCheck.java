import java.util.HashMap;

public class DimensoesSemCheck extends DimensoesBaseVisitor<Boolean> {

	private Boolean error = false;

	public Boolean error(){
		return error;
	}

	@Override
	public Boolean visitDeclaration(DimensoesParser.DeclarationContext ctx) {
		Boolean res = true;

        String id = ctx.ID().getText();

        if (DimensoesParser.table.containsKey(id)) {

			ErrorHandling.printError(ctx, "A variable named \"" + id + "\" was already declared!");
			error = true;
            res = false;

        } else{

			DimensoesParser.table.put(id, null);
		}

        return res;
	}

	@Override public Boolean visitConvert(DimensoesParser.ConvertContext ctx) { 
		Boolean res = true;
		String id = ctx.id2.getText();
		String id1 = ctx.id1.getText();

		if (!DimensoesParser.table.containsKey(id)){
			ErrorHandling.printError(ctx, "A variable named \"" + id + "\"  doesn't exist!");
			error = true;
            res = false;
		}else{
			DimensoesParser.convertTable.put(id1,null);
		}
		return res;
	}
}
