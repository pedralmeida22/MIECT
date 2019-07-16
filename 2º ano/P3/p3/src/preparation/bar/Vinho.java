package preparation.bar;

public class Vinho extends Bebida implements Alcoolica {

	private static final long serialVersionUID = 1L;
	private Regiao regiao;
	private double teor;
	
	public enum Regiao { 
		Douro, Alentejo, Dao, Beiras, Bairrada;
	}
	
	Vinho(String n, int q, double p, double t, Regiao r) {
		super(n, q, p);
		this.setTeor(t);
		this.regiao = r;
	}
	
	public double getTeor() {
		return teor;
	}

	public void setTeor(double teor) {
		this.teor = teor;
	}

	public Regiao getRegiao() {
		return regiao;
	}

	public void setRegiao(Regiao regiao) {
		this.regiao = regiao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((regiao == null) ? 0 : regiao.hashCode());
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
		Vinho other = (Vinho) obj;
		if (regiao != other.regiao)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return super.toString() + ", " + teor + "% de alcool, regiao " + regiao;
	}	
	
}
