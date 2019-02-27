package aula1;

public class Retangulo {
	private double lar;
	private double comp;
	private double area;
	private double perimetro;
	
	public Retangulo(double lar, double comp) {
		this.lar = lar;
		this.comp = comp;
		area = lar * comp;
		perimetro = 2 * lar + 2 * comp;
	}
	
	public double lar() {
		return lar;
	}
	public double comp() {
		return comp;
	}
	public double area() {
		return area;
	}
	public double perimetro() {
		return perimetro;
	}
	
	public String toString() {
		return "Quadrado" + "\nLargura: " + lar + "\nComprimento: " + comp + "\nArea: " + area + "\nPerimetro: " + perimetro;
	}
}
