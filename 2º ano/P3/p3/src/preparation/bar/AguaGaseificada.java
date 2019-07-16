package preparation.bar;

public class AguaGaseificada extends Agua implements Gaseificada {

	private static final long serialVersionUID = 1L;

	public AguaGaseificada(String n, int q, double p, Tipo t) {
		super(n, q, p, t);
	}

	@Override
	public String toString() {
		return super.toString() + ", com gas";
	}
	
	
}
