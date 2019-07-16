package aula9.ex2;

public class GeladoSimples implements Gelado {
	private String sabor;
	
	public GeladoSimples(String s) {
		this.sabor = s;
	}

	@Override
	public void base(int n) {
		System.out.print("\n" + n + " bolas de " + sabor);
	}
	
	
}
