package preparation.clinica;

import java.util.*; 
import preparation.clinica.Cadeira.Tipo;
import preparation.clinica.Clinica.MyRangeIterator;

public class TestClinica {

	public static void main(String[] args) {
		Clinica clinica = new Clinica("Almeida");
		
		Cadeira c1 = new Cadeira("Cadeira", 1, Material.plastico, 4, 50.0, Tipo.Espera);
		Cama c2 = new Cama("Cama", 2, Material.madeira, new Dimensao(1.90, 1.40), true);
		Cama c3 = new Cama("Cama", 2, Material.madeira, new Dimensao(1.90, 1.40), true);
		CadeiraRodas cr = new CadeiraRodas("Cadeira de rodas", 3, Material.metal, 5, 70, Tipo.Atendimento, 4, true);
		Marquesa ma = new Marquesa("Marquesa", 4, Material.sintetico, new Dimensao(2, 1.6), true, true);
		
		clinica.addFurniture(c1);
		clinica.addFurniture(c2);
		clinica.addFurniture(c3); // nao deve aparecer
		clinica.addFurniture(cr);
		clinica.addFurniture(ma);
		System.out.println(clinica);
		
		clinica.removeFurniture(ma);
		c2.setColchao(false);
		System.out.println(clinica);
		
		List<Transporte> trans = clinica.listTransportes();
		System.out.println("\nLista de Mobiliario de Transporte");
		trans.stream().forEach(System.out::println);
		
		System.out.println("\n-----------Listagem de todo o mobiliario-----------");
		for(MyRangeIterator<Mobiliario> it = (MyRangeIterator<Mobiliario>) clinica.iterator(); it.hasNext();) {
			System.out.println(it.next());
		}
		
		System.out.println("\n-----------Listagem das duas primeiras pecas de mobiliario-----------");
		for(MyRangeIterator<Mobiliario> it = (MyRangeIterator<Mobiliario>) clinica.iterator(0, 1); it.hasNext();) {
			System.out.println(it.next());
		}
		
		clinica.saveClinica("clinica.bin");
		
		Clinica clinica2 = Clinica.loadClinica("clinica.bin");
		
		System.out.println("\n" + clinica2);
		List<Transporte> trans2 = clinica2.listTransportes();
		System.out.println("\nLista2 de Mobiliario de Transporte");
		trans2.stream().forEach(System.out::println);
	}

}
