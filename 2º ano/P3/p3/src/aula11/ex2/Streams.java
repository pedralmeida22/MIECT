package aula11.ex2;

import java.util.*;

public class Streams {

	public static void main(String[] args) {
		List<FiguraGeometrica> figs = new ArrayList<>();
		figs.add(new Quadrado(2));
		figs.add(new Quadrado(3));
		figs.add(new Quadrado(4));
		figs.add(new Retangulo(4, 5));
		figs.add(new Circulo(1));
		
		System.out.println("Maior figura: " + maiorFiguraJ7(figs));
		System.out.println("Figura com maior perimetro: " + maiorPerimetro(figs));
		System.out.println("Area total: " + areaTotalJ8(figs));
		System.out.println("Area total de quadrados: " + areaTotalJ8(figs, "Quadrado"));
		System.out.println("Area total de retangulos: " + areaTotalJ8(figs, "Retangulo"));
		System.out.println("Area total de cicurlos: " + areaTotalJ8(figs, "Circulo"));
	}
	
	private static FiguraGeometrica maiorFiguraJ7(List<FiguraGeometrica> figs) {
		return (FiguraGeometrica) figs.stream()
				.max(new Comparator<FiguraGeometrica>() {
					public int compare(FiguraGeometrica fig1, FiguraGeometrica fig2) {
						return fig1.compareTo(fig2);
					}
				}).get();
	}
	
	private static FiguraGeometrica maiorPerimetro(List<FiguraGeometrica> figs) {
		return (FiguraGeometrica) figs.stream()
				.max(new Comparator<FiguraGeometrica>() {
					public int compare(FiguraGeometrica fig1, FiguraGeometrica fig2) {
						double temp = fig1.perimetro() - fig2.perimetro();
						if(temp < 0) return -1;
						else if(temp > 0) return 1;
						else return 0;
					}
			}).get();
	}
	
	private static double areaTotalJ8(List<FiguraGeometrica> figs) {
		return figs.stream().map(x -> x.area())
					.reduce(0.0, (sum, area) -> sum + area);
	}
	
	private static double areaTotalJ8(List<FiguraGeometrica> figs, String subtipoNome){
		return figs.stream().filter(x -> x.getClass().getSimpleName().equals(subtipoNome))
							.map(x -> x.area()).reduce(0.0, (sum, area) -> sum + area);
	}

}
