package preparation.clinica;

public class Cadeira extends Mobiliario {
	private static final long serialVersionUID = 1L;
	private int nApoios;
	private double altura;
	private Tipo tipo;
	
	protected enum Tipo {
		Escritorio, Espera, Atendimento;
	}
	
	public Cadeira(String d, int id, Material m, int apoios, double alt, Tipo t) {
		super(d,id, m);
		this.altura = alt;
		this.nApoios = apoios;
		this.tipo = t;
	}

	public int getnApoios() {
		return nApoios;
	}

	public void setnApoios(int nApoios) {
		this.nApoios = nApoios;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	public Tipo getType() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(altura);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + nApoios;
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cadeira other = (Cadeira) obj;
		if (Double.doubleToLongBits(altura) != Double.doubleToLongBits(other.altura))
			return false;
		if (nApoios != other.nApoios)
			return false;
		if (tipo != other.tipo)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return super.toString() + ", " + nApoios + " apoios, " + altura + " de altura, para " + tipo;
	}
	
	
}
