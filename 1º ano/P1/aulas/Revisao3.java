import java.util.*;

public class Revisao3 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
	int nalunos, soma = 0;
	int notamax = 0, notamin = 0;
	
	do{
		System.out.println(" Quantos alunos tem a turma?");
		nalunos = sc.nextInt();
	} while (nalunos <= 0);
	
	for(int i = 1; i < nalunos; i++){
		int nota = (int) (Math.random()*((20 - 0) + 1) + 0); //gera numeros entre 0 e 20
		soma = soma + nota;
	
		if(nota > notamax) {
			notamax = nota;
		} else if(nota < notamin) {
			notamin = nota;
		}
	}
	
	if(media(nalunos, soma) >= 10) {  //imprimir no terminal
		System.out.printf(" A media da turma foi positiva com %f valores %n", media(nalunos, soma));
		System.out.printf(" A nota mais alta foi %d \n", notamax); 
		System.out.printf(" A nota mais baixa foi %d \n", notamin);
	} else {
		System.out.printf(" A media da turma foi negativa com %f valores %n", media(nalunos, soma));
		System.out.printf(" A nota mais alta foi %d \n", notamax); 
		System.out.printf(" A nota mais baixa foi %d \n", notamin);
	}

}
	public static double media(int nalunos, int soma) {  //funcao para calcular media
		double media = soma / nalunos;
		return media;
	}
}

  // (int)(Math.random() * ((max - min) + 1) + min);
  // (int)((max - min + 1) * Math.random()) + min;
