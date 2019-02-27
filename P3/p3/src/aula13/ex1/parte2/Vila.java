package aula13.ex1.parte2;

public class Vila extends Localidade {
	
	public Vila(String n, int p) {
		super(n ,p);
	}

	@Override
	public String toString() {
		return "Vila: " + super.toString();
	}
	
	
}
