package aula3;

public class Teste_ex3 {

	public static void main(String[] args) {
		Condutor c1 = new Condutor("Pedro", 14735470, new Data(02,02,1999), new Carta("B"));
		Condutor c2 = new Condutor("Risitas", 14993034, new Data(17,07,1999), new Carta("B"));	
		System.out.println("c1 equals c2 --> " + c1.equals(c2));  //false
		System.out.println("Carta tipo de c1: " + c1.carta());    //B
		
		Ligeiro l1 = new Ligeiro(c1, COLOR.BRANCO);
		Ligeiro l2 = new Ligeiro(c1);
		System.out.println("l1 equals l2 --> " + l1.equals(l2)); //true
		
		l1.changeColor(COLOR.AZUL);
		System.out.println("Cor do ligeiro: " + l1.color());
		
		Motociclo m1 = new Motociclo(c2);
		System.out.println("O condutor e habilitado para conduzir este veiculo: " + m1.habilitado());  //false
		Motociclo m2 = new Motociclo(c1);
		System.out.println("m1 equals m2 --> " + m1.equals(m2)); //false
		
		PesadoMercadoria pm1 = new PesadoMercadoria(c2);
		System.out.println(pm1);
		pm1.carregarMercadoria(MERCADORIA.ALIMENTACAO);
		System.out.println("Mercadoria: " + pm1.mercadoria()); //alimentacao
		
		PesadoPassageiro pp1 = new PesadoPassageiro(c1);
		System.out.println(pp1);
		pp1.mudarDestino(CIDADE.AVEIRO);
		System.out.println("Destino de pp1: " + pp1.destino()); //aveiro

	}

}
