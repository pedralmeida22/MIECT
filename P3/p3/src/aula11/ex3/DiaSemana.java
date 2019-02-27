package aula11.ex3;

public enum DiaSemana {
	segunda(0), terca(1), quarta(2), quinta(3), sexta(4), sabado(5), domingo(6);
	
	private int index;
	
	private DiaSemana(int i) {
		this.index = i;
	}
	
	public int getIndex() {
		return index;
	}
	
	public static DiaSemana rand() {
		int rand = (int)(Math.random()*7);
		DiaSemana dia = null;
		for(DiaSemana i : DiaSemana.values()) {
			if(i.getIndex() == rand) dia = i;
		}
		return dia;
	}
	
}
