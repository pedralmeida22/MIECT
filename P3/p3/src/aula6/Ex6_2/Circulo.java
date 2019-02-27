package aula6.Ex6_2;

public class Circulo extends FiguraGeometrica {
	protected double raio;
	
	public Circulo(Point c, double r) {
		super(c);
		this.raio = r;
	}
	public Circulo(int x, int y, double r) {
		this(new Point(x, y), r);
	}
	public Circulo(double r) {
		this(new Point(), r);
	}
	public Circulo(Circulo c) {
		this(c.centro, c.raio);
	}
	
	public double raio() { return raio; }
	public double area() { return Math.PI * raio * raio; }
	public double perimetro() { return 2 * Math.PI * raio; }
	public Point centro() { return centro; }
	
	@Override
	public String toString() {
		return  "Circulo de centro " + this.centro().toString() + " [raio=" + raio + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(raio);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Circulo other = (Circulo) obj;
		if (Double.doubleToLongBits(raio) != Double.doubleToLongBits(other.raio))
			return false;
		return true;
	}
	
	
	
	
}
