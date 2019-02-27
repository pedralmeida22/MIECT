package aula10.ex1;

import java.util.*;

public abstract class TestGeneric {
	public static void main(String[] args) {
		VectorGeneric<Pessoa> vp = new VectorGeneric<Pessoa>();
		for (int i=0; i<10; i++)
			vp.addElem(new Pessoa("Bebé no Vector "+i,
					1000+i, Data.today()));
		
		Iterator<Pessoa> vec = vp.iterator();
		
		printSet(vp.iterator());
		
		ListGeneric<Pessoa> lp = new ListGeneric<Pessoa>();
		while ( vec.hasNext() )
			lp.addElem( vec.next() );
		
		Iterator<Pessoa> lista = lp.iterator();
		while ( lista.hasNext() )
			System.out.println( lista.next() );
		
		ListGeneric<FiguraGeometrica> figList = new ListGeneric<FiguraGeometrica>();
		figList.addElem(new Circulo (1,3, 1));
		figList.addElem(new Quadrado(3,4, 2));
		
		figList.addElem(new Retangulo(1,2, 2,5));
		
		printSet(figList.iterator());
		
		System.out.println("Soma da Area de Lista de Figuras: " + sumArea(figList));
		
		// Partindo do principio que Quadrado extends Rectangulo:
		ListGeneric< Retangulo > quadList = new ListGeneric<Retangulo>();
		quadList.addElem(new Quadrado(3,4, 2));
		quadList.addElem(new Retangulo(1,2, 2,5));
		
		System.out.println("Soma da Area de Lista de Quadrados: " + sumArea(quadList));
	}
	
	public static double sumArea(ListGeneric<? extends FiguraGeometrica> list) {
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
