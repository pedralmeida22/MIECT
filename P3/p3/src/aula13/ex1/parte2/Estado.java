package aula13.ex1.parte2;

public class Estado extends Regiao {
	private Localidade capital;
	
	Estado(String n, int p, Cidade c) {
		super(n, p);
		this.capital = c;
	}

	@Override
	public String toString() {
		return "Estado: " + capital;
	}

	public Localidade getCapital() {
		return capital;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((capital == null) ? 0 : capital.hashCode());
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
		Estado other = (Estado) obj;
		if (capital == null) {
			if (other.capital != null)
				return false;
		} else if (!capital.equals(other.capital))
			return false;
		return true;
	}
	
	
	
}
