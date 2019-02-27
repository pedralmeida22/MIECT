package aula1;

public class Circulo {
	private double raio;
	private Ponto centro;
	private double area;
	private double perimetro;
	
	public Circulo(double x, double y, double r) {
		raio = r;
		centro = new Ponto(x, y);
		area = Math.PI * raio * raio;
		perimetro = 2 * Math.PI * raio;
	}
	
	public Circulo(Ponto centro, double r) {
		raio = r;
		this.centro = centro;
		area = Math.PI * raio * raio;
		perimetro = 2 * Math.PI * raio;
	}
	
	public double raio() {
		return raio;
	}
	public Ponto centro() {
		return centro;
	}
	public double area() {
		return area;
	}
	public double perimetro() {
		return perimetro;
	}
	
	public String toString() {
		return "Circulo" + "\nRaio: " + raio + "\nCentro: " + centro + "\nArea: " + area + "\nPerimetro: " + perimetro;
	}
	
	public boolean interset(Circulo c) {
		return this.centro.distPoint(c.centro()) <= this.raio + c.raio();
	}
	
	public boolean equal() {
		if(this.centro().equals(centro()) && this.raio() == (raio())) return true;
		return false;
	}
}
