package aula3;

public class Retangulo extends FiguraGeometrica {
	protected double larg; //largura
	protected double comp; //comprimento
	
	public Retangulo(Point c, double comp, double larg) {
		super(c);
		this.comp = comp;
		this.larg = larg;
	}
	public Retangulo(int x, int y, double comp, double larg) {
		this(new Point(x, y), comp, larg);
	}
	public Retangulo(double comp, double larg) {
		this(new Point(), comp, larg);
	}
	public Retangulo(Retangulo r) {
		this(r.centro, r.comp, r.larg);
	}
	
	public double comp() { return comp;	}
	public double larg() { return larg; }
	public double area() { return comp * larg; }
	public double perimetro() { return comp * 2 + larg * 2; }
	public Point centro() { return centro; }
	
	@Override
	public String toString() {
		return "Retangulo [larg=" + larg + ", comp=" + comp + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(comp);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(larg);
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
		Retangulo other = (Retangulo) obj;
		if (Double.doubleToLongBits(comp) != Double.doubleToLongBits(other.comp))
			return false;
		if (Double.doubleToLongBits(larg) != Double.doubleToLongBits(other.larg))
			return false;
		return true;
	}	
	
}
