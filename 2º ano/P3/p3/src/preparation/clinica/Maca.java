package preparation.clinica;

public class Maca extends Marquesa implements Transporte {
	private static final long serialVersionUID = 1L;
	private int nGrades;
	
	Maca(String d, int id, Material m, Dimensao dim, boolean col, int grades){
		super(d, id, m, dim, col, false); //inclinacao = false;
		this.nGrades = grades;
	}
	
	public int getnGrades() {
		return nGrades;
	}

	public void setnGrades(int nGrades) {
		this.nGrades = nGrades;
	}

	@Override
	public TransportType getTipo() {
		return TransportType.Emergencia;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + nGrades;
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
		Maca other = (Maca) obj;
		if (nGrades != other.nGrades)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return super.toString() + ", " + nGrades + " grades";
	}
	
	
}
