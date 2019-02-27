package aula11.ex1.a;

import java.util.*;

import aula10.ex1.Circulo;
import aula10.ex1.FiguraGeometrica;
import aula10.ex1.Quadrado;
import aula10.ex1.Retangulo;

public class Collections {

	public static void main(String[] args) {
		List<Pessoa> vp = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			vp.add(new Pessoa("Bebé no Vector " + i, 1000 + i, Data.today()));
		}

		Iterator<Pessoa> vec = vp.iterator();

		printSet(vp.iterator());

		List<Pessoa> lp = new LinkedList<>();
		while (vec.hasNext())
			lp.add(vec.next());
		
		Iterator<Pessoa> lista = lp.iterator();
		while(lista.hasNext())
			System.out.println(lista.next());
		
		List<FiguraGeometrica> figList = new LinkedList<>();
		
		figList.add(new Circulo (1,3, 1));
		figList.add(new Quadrado(3,4, 2));
		figList.add(new Retangulo(1,2, 2,5));
		
		printSet(figList.iterator());
		
		System.out.println("Soma da Area de Lista de Figuras: " + sumArea(figList));
		
		// Partindo do principio que Quadrado extends Rectangulo:
		List<Retangulo> quadList = new LinkedList<Retangulo>();
		quadList.add(new Quadrado(3,4, 2));
		quadList.add(new Retangulo(1,2, 2,5));
		
		System.out.println("Soma da Area de Lista de Quadrados: " + sumArea(quadList));
	}
	
	public static double sumArea(List<? extends FiguraGeometrica> list) {
		double sum = 0;
		Iterator<? extends FiguraGeometrica> it = list.iterator();
		FiguraGeometrica temp;
		while(it.hasNext()) {
			temp = it.next();
			sum += temp.area();
		}
		return sum;
	}
	
	@SuppressWarnings("rawtypes")
	public static void printSet(Iterator iterator) {
		while(iterator.hasNext()) {
			System.out.println(iterator.next());
		}
	}

}
