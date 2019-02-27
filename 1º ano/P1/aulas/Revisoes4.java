import java.util.*;


public class Revisoes4 {
	static double total = 0;
	static double max = 0;
	static double min = 20;
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int nalunos, escolher;
		double aluno1 = 0, aluno2 = 0, aluno3, aluno4, aluno5;
		do{
			System.out.println(" (1) - Inserir  |  (2) - Gerar ");
			escolher = sc.nextInt();
		} while (escolher != 1 && escolher != 2);
		
		
		
		nalunos = 5;
		
		if(escolher == 1) {
			for(int i = 1; i <= nalunos; i++){
				switch(i){
					case(1): aluno1 = inserir(); break;
					case(2): aluno2 = inserir();break;
					case(3): aluno3 = inserir();break;
					case(4): aluno4 = inserir();break;
					case(5): aluno5 = inserir();break;
					
				}
			}
			
		} else {
			for(int i = 0; i < nalunos; i++) {
				gerar();
			}
		}
		
		for(int i = 1; i <= nalunos; i++){
			switch(i){
				case(1): System.out.println("A nota do aluno 1 e: " + aluno1); break;
				case(2): System.out.println("A nota do aluno 2 e: " + aluno2);break;
				case(3): aluno3 = inserir();break;
				case(4): aluno4 = inserir();break;
				case(5): aluno5 = inserir();break;
			}
		}
		System.out.printf(" A nota mais alta da turma e %f ",max);
		System.out.printf(" A nota mais baixa da turma e %f ",min);
		System.out.printf(" A media da turma foi %f ",(double)total/(double)nalunos);
	}
	public static int gerar() {
		int rand = (int)( 21 * Math.random());
		total = total + rand;
		if(rand > max) {
			 max = rand;
		 }
		else if(rand < min){
			min = rand;
		}
		return (int)( 21 * Math.random());
		
		
	}
	public static double inserir() {
		double nota; 
		
		do{
			System.out.println(" Insira nota ");
			nota = sc.nextInt();
			if(nota < 0 || nota > 20) System.out.print(" Nota invalida!! ");
		} while (nota < 0 || nota > 20);
		total = total + nota;
		return nota;
		
	}
	public static int max(int nota, int max){
		if(nota > max) {
			 return nota;
		 } else
			return max;
		
	}
	public static int min(int nota, int min){
		if(nota > min) {
			 return nota;
		 } else
			return min;
		
	}
}

