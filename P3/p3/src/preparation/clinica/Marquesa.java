package preparation.clinica;

public class Marquesa extends Cama {
	private static final long serialVersionUID = 1L;
	private boolean inclinacao;
	
	Marquesa(String d, int id, Material m, Dimensao dim, boolean col, boolean incli){
		super(d, id, m, dim, col);
		this.inclinacao = incli;
	}
	
	public boolean isInclinacao() {
		return inclinacao;
	}

	public void setInclinacao(boolean inclinacao) {
		this.inclinacao = inclinacao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + (inclinacao ? 1231 : 1237);
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
		Marquesa other = (Marquesa) obj;
		if (inclinacao != other.inclinacao)
			return false;
		return true;
	}

	@Override
	public String toString() {
		if(inclinacao)
			return super.toString() + "Marquesa com inclinacao";
		else
			return super.toString() + "Marquesa sem inclinacao";
	}
	
		
	
}
