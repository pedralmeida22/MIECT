package aula9.ex2;

public class Topping extends GeladoDecorator {
	private String sabor;

	public Topping(Gelado decorator, String sabor) {
		super(decorator);
		this.sabor = sabor;
	}

	@Override
	public void base(int n) {
		decorator.base(n);
		System.out.print(" com " + sabor);
	}
	
	
	
}
