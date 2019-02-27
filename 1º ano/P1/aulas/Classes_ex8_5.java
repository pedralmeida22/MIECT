import java.util.*;


public class Classes_ex8_5 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		System.out.println("Nome: ");
		String nome = sc.nextLine();
		
		System.out.println("M - Masculino | Feminino - F");
		char l = sc.nextLine().charAt(0);
		boolean sexo;
		if(l == 'm'){
			sexo = true;
		}else{
			sexo = false;
		}
		
		System.out.println("Peso: ");
		double peso = sc.nextDouble();
		
		System.out.println("Quantidade de bebida ingerida em ml: ");
		double qnt = sc.nextDouble();
		
		System.out.println("Teor alcoolico da bebida em %: ");
		double ta = sc.nextDouble();
		sc.nextLine(); //limpar scanner
			
		System.out.println("Bebeu em jejum?");
		System.out.println("S - sim | nao - N");
		char t = sc.nextLine().charAt(0);
		boolean jejum;
		if(t == 's') {
			jejum = true;
		}else {
			jejum = false;
		}
		
		Pessoa pessoa1 = new Pessoa(nome, sexo, peso, qnt, ta, jejum);
		
		double tas = pessoa1.tas();
		System.out.printf("A taxa de alcoolemia do %s e de aproximadamente de %.2f", pessoa1.nome, tas);
	
	}
}
class Pessoa {
	String nome;
	boolean sexo, jejum;
	double peso, qnt, ta;
	
	public Pessoa(String nome1, boolean sexo1, double peso1, double qnt1, double ta1, boolean jejum1){
		this.nome = nome1;
		this.sexo = sexo1;
		this.peso = peso1;
		this.qnt = qnt1;
		this.ta = ta1;
		this.jejum = jejum1;
	}
	public double tas(){
		double coef = 0;
		double tas;
		
		if(!sexo && jejum) {
			coef = 0.6;
		}
		else if(sexo && jejum) {
			coef = 0.7;
		}
		else if(!jejum) {
			coef = 1.1;
		}
		
		double temp = ((0.8*qnt*ta)/100);
		tas = temp /(peso*coef);
		
		return tas;
	}	
}

