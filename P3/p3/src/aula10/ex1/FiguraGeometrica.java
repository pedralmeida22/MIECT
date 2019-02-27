package aula10.ex1;

public abstract class FiguraGeometrica implements Comparable<FiguraGeometrica> {
	protected Point centro;
	
	public FiguraGeometrica(Point c) {
		this.centro = c;
	}
	
	public Point centro() { return centro; }
	
	public abstract double area();
	public abstract double perimetro();
	
	@Override
	public int compareTo(FiguraGeometrica f) {
		return (int) (this.area() - f.area());
	}
	
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
