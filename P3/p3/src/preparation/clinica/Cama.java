package preparation.clinica;


public class Cama extends Mobiliario {
	private static final long serialVersionUID = 1L;
	private Dimensao dim;
	private boolean colchao;
	
	Cama(String d, int id, Material m, Dimensao dim, boolean col){
		super(d, id, m);
		this.dim = dim;
		this.colchao = col;
	}

	public Dimensao getDim() {
		return dim;
	}

	public void setDim(Dimensao dim) {
		this.dim = dim;
	}

	public boolean isColchao() {
		return colchao;
	}

	public void setColchao(boolean colchao) {
		this.colchao = colchao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + (colchao ? 1231 : 1237);
		result = prime * result + ((dim == null) ? 0 : dim.hashCode());
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
		Cama other = (Cama) obj;
		if (colchao != other.colchao)
			return false;
		if (dim == null) {
			if (other.dim != null)
				return false;
		} else if (!dim.equals(other.dim))
			return false;
		return true;
	}

	@Override
	public String toString() {
		if(colchao) {
			return super.toString() + ", " + dim.toString() + ", com colchao";
		}else {
			return super.toString() + ", " + dim.toString() + ", sem colchao";
		}
	}
	
	
}
