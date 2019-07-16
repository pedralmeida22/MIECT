package aula11.ex2;

public class Quadrado extends Retangulo {
	protected double lado;
	
	public Quadrado(Point c, double lado) {
		super(c, lado, lado);
		this.lado = lado;
	}
	public Quadrado(Quadrado q) {
		this(q.centro, q.lado);
	}
	public Quadrado(int x, int y, double lado) {
		this(new Point(x, y), lado);
	}
	public Quadrado(double lado) {
		this(new Point(), lado);
	}
	
	public double lado() { return lado; }
	public double area() { return lado * lado; }
	public double perimetro() { return lado * 4; }  
	public Point centro() { return centro; }
	
	@Override
	public String toString() {
		return "Quadrado de centro " + this.centro().toString() + " [lado=" + lado + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(lado);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Quadrado other = (Quadrado) obj;
		if (Double.doubleToLongBits(lado) != Double.doubleToLongBits(other.lado))
			return false;
		return true;
	}
		
}
