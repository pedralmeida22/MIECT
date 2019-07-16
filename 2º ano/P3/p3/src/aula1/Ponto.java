package aula1;

public class Ponto {
	private double x;
	private double y;
	
	public Ponto(double x, double y) {
		this.x = x;
		this.y = y;
	}
	
	public double x() {
		return x;
	}
	public double y() {
		return y;
	}
	
	public double distPoint(Ponto p) {
		return Math.sqrt(Math.pow(p.x()-x,2)+Math.pow(p.y()-y,2));
	}
}
