package preparation.bar;

public class Espumante extends Vinho implements Gaseificada {

	private static final long serialVersionUID = 1L;

	public Espumante(String n, int q, double p, double t, Regiao r) {
		super(n, q, p, t, r);
	}

	@Override
	public String toString() {
		return super.toString() + ", *espumante*";
	}
		
}
