package aula1;

public class Quadrado {
	private double lado;
	private double area;
	private double perimetro;
	
	public Quadrado(double l) {
		lado = l;
		area = lado * lado;
		perimetro = 4 * lado;
	}
	
	public double lado() {
		return lado;
	}
	public double area() {
		return area;
	}
	public double perimetro() {
		return perimetro;
	}
	
	public String toString() {
		return "Quadrado" + "\nLado: " + lado + "\nArea: " + area + "\nPerimetro: " + perimetro;
	}
}
