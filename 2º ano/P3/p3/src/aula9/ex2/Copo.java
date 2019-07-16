package aula9.ex2;

public class Copo extends GeladoDecorator {
	private String ingrediente;
	
	public Copo(Gelado g, String ingr) {
		super(g);
		this.ingrediente = ingr;
	}
	
	public Copo(Gelado g) {
		this(g, null);
	}
	
	@Override
	public void base(int n) {
		decorator.base(n);
		System.out.print(" em copo" + (ingrediente == null ? "" : "com" + ingrediente));
	}
}
