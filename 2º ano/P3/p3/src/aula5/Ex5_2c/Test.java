package aula5.Ex5_2c;

public class Test {

	public static void main(String[] args) {
		Automovel auto1 = new Automovel();
		Moto moto1 = new Moto();
		Bicicleta bike1 = new Bicicleta();
		CarroPolicia cp1 = new CarroPolicia();
		Veiculo v1 = new Automovel();
		MotoPolicia mp1 = new MotoPolicia();
		BicicletaPolicia bp1 = new BicicletaPolicia();
		
		ListaVeiculos lista = new ListaVeiculos();
		
		System.out.println("Adicionar veiculos na lista: ");
		System.out.println(lista.addVeiculo(auto1)); //true
		System.out.println(lista.addVeiculo(moto1)); //true
		System.out.println(lista.addVeiculo(bike1)); //true
		System.out.println(lista.addVeiculo(cp1));   //true
		System.out.println(lista.addVeiculo(v1));    //true
		System.out.println(lista.addVeiculo(mp1));   //true
		System.out.println(lista.addVeiculo(bp1));   //true
		
		Veiculo[] veiculos = lista.getVeiculos();
		
		System.out.println("\n Lista de Veiculos: ");
		for(Veiculo v : veiculos) {
			System.out.println(v);
		}
		
		System.out.println("\n Remover Motas: ");
		System.out.println(lista.removeVeiculo(moto1));
		System.out.println(lista.removeVeiculo(mp1));
		
		Veiculo[] veiculos2 = lista.getVeiculos();
		
		System.out.println("\n Lista de Veiculos: ");
		for(Veiculo v : veiculos2) {
			System.out.println(v);
		}
		
		System.out.println("\nauto1 equals v1 -> " + auto1.equals(v1)); //true
		
		System.out.println("\n Before changes: \n" + cp1);
		cp1.changeColor(Cor.AZUL);
		cp1.changeCombustivel(COMBUSTIVEL.GASOLEO);
		cp1.setAcidentado(true);
		cp1.setPrisioneiro(true);
		cp1.setTipo(TIPOEMERGENCIA.PSP);
		System.out.println("\n After changes: \n" + cp1);
		
		UtilCompare.sortArray(veiculos2);
		System.out.println("\nLista de veiculos ordenada por ano: ");
		for(Veiculo v : veiculos2) {
			System.out.println(v);
		}
		
	}

}
