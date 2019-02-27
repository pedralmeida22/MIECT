package aula13.ex1.parte2;

public class Cidade extends Localidade {
	
	public Cidade(String n, int p) {
		super(n, p);
	}

	@Override
	public String toString() {
		return "Cidade: " + super.toString();
	}
	
}
