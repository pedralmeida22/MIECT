package aula5.Ex5_1;
import java.util.*;

public class ColecaoFiguras {
	private List<FiguraGeometrica> figuras;
	private final double maxArea;
	private double areaTotal;
	
	public ColecaoFiguras(double maxArea) {
		this.figuras = new ArrayList<>();
		this.maxArea = maxArea;
		this.areaTotal = 0;
	}
	
	public boolean addFigura(FiguraGeometrica f) {
		if(exists(f) || f.area() + areaTotal > maxArea)
			return false;
		areaTotal += f.area();
		return figuras.add(f);
	}
	
	public boolean delFigura(FiguraGeometrica f) {
		if(!exists(f)) return false;
		areaTotal -= f.area();
		
		return figuras.remove(f);
	}
	
	public double areaTotal() { return areaTotal; }
	
	public boolean exists(FiguraGeometrica f) {
		for(FiguraGeometrica i : getFiguras()) {
			if(i.equals(f))
				return true;
		}
		return false;
	}

	@Override
	public String toString() {
		return "ColecaoFiguras [figuras=" + figuras + ", maxArea=" + maxArea + ", areaTotal=" + areaTotal + "]";
	}
	
	public FiguraGeometrica[] getFiguras() {
		return figuras.toArray(new FiguraGeometrica[0]);
	}
	
	public Point[] getCentros() {
		List<Point> pontos = new ArrayList<>();
		for(FiguraGeometrica f : getFiguras()) {
			pontos.add(f.centro());
		}
		
		return pontos.toArray(new Point[0]);
	}
}
