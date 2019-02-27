package preparation.bar;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import preparation.bar.Agua.Tipo;
import preparation.bar.Bar.MyRangeIterator;
import preparation.bar.Vinho.Regiao;

public class TestBar {

	public static void main(String[] args) {
		Agua a1 = new Agua("PuraNascente", 33, 0.45, Tipo.Mineral);
		Agua a2 = new AguaGaseificada("AguaMineral", 25, 0.49, Tipo.Mineral);

		Vinho v1 = new Vinho("Penalva", 75, 2.79, 13, Regiao.Dao);
		Espumante v2 = new Espumante("LeitaodeVinho", 75, 3.5, 12.5, Regiao.Bairrada);

		Bar bar1 = new Bar("Meu Bar");

		System.out.println("---------Qql cena--------");
		System.out.print(bar1.addBebida(a1) + " \n");
		System.out.print(bar1.addBebida(a2) + "\n");
		System.out.print(bar1.addBebida(a2) + "\n");
		System.out.print(bar1.addBebida(v1) + "\n");
		System.out.print(bar1.addBebida(v2) + "\n");

		List<Bebida> b = bar1.list();

		Collections.sort(b, new PerPriceComparator());
		System.out.println("-----Ordenar por preço----");
		for (Iterator<Bebida> b1 = b.iterator(); b1.hasNext();)
			System.out.println(b1.next());
		
		try {
			bar1.saveBar("bar.bin");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Bar bar2 = null;
		try {
			bar2 = Bar.loadBar("bar.bin");
		} catch (ClassNotFoundException | IOException e) {
			e.printStackTrace();
		}

		while (bar1.size() != 0)
			bar1.remove(bar1.size() - 1);

		System.out.println("\nApos remover bar1:");
		for (MyRangeIterator<Bebida> bi = bar1.iterator(); bi.hasNext();)
			System.out.println(bi.next());
		
		System.out.println("\nBar2:");
		for (MyRangeIterator<Bebida> bi = bar2.iterator(); bi.hasNext();)
			System.out.println(bi.next());
		
	}

}
