package aula5.Ex5_2c;

public class Bicicleta extends Veiculo {
	private TIPOBIKE tipo;
	
	public Bicicleta(int ano, Cor c, int nRodas, TIPOBIKE t) {
		super(ano, c, nRodas);
		this.tipo = t;
	}
	
	public Bicicleta(int ano, Cor c) {
		super(ano, c, 2);
		this.tipo = TIPOBIKE.ESTRADA;
	}
	
	public Bicicleta() {
		super(2017, Cor.LARANJA, 2);
		this.tipo = TIPOBIKE.CROSSCOUNTRY;
	}
	
	public TIPOBIKE tipo() { return tipo; }
	public void changeTipo(TIPOBIKE t) {
		this.tipo = t;
	}

	@Override
	public String toString() {
		return "Bicicleta:" + super.toString() + ", tipo=" + tipo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
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
		Bicicleta other = (Bicicleta) obj;
		if (tipo != other.tipo)
			return false;
		return true;
	}
	
	
}
