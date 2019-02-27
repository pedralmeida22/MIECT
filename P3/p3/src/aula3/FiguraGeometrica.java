package aula3;

public class FiguraGeometrica {
	protected Point centro;
	
	public FiguraGeometrica(Point c) {
		this.centro = c;
	}
	
	public Point centro() { return centro; }
	
	@Override
	public String toString() {
		return "Figura";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((centro == null) ? 0 : centro.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FiguraGeometrica other = (FiguraGeometrica) obj;
		if (centro == null) {
			if (other.centro != null)
				return false;
		} else if (!centro.equals(other.centro))
			return false;
		return true;
	}
	
}
