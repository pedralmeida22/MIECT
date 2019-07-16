package aula6.Ex6_1;

public class PratoVegetariano extends Prato {
	
	public PratoVegetariano(String n) {
		super(n);
	}
	
	@Override
	public boolean addIngrediente(Alimento alimento) {
		if(alimento == null) return false;
		if(alimento instanceof AlimentoVegetariano)
			return super.addIngrediente(alimento);
		return false;
	}
	
	@Override 
	public boolean removeIngrediente(Alimento alimento) {
		if(alimento == null) return false;
		if(alimento instanceof AlimentoVegetariano)
			return super.removeIngrediente(alimento);
		return false;
	}

	@Override
	public String toString() {
		return super.toString() + " PratoVegetariano";
	}
	
	
}
