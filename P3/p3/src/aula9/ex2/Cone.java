package aula9.ex2;

public class Cone extends GeladoDecorator {
	

	public Cone(Gelado decorator) {
		super(decorator);
	}

	@Override
	public void base(int n) {
		decorator.base(n);
		System.out.print(" em cone");
	}

}
