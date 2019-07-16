package aula9.ex2;

public abstract class GeladoDecorator implements Gelado {
	protected Gelado decorator;
	
	public GeladoDecorator(Gelado decorator) {
		this.decorator = decorator;
	}
}
