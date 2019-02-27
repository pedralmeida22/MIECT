import java.util.*;


public class Arrays_ex6_4 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int[] notas = escrevernotas();
		int[] x = contar(notas);
		
		System.out.println("\n\n\n\n");
		System.out.println(" Histograma de notas");
		System.out.println("---------------------");
		for(int i = 20; i >= 0; i--) {
			System.out.printf(" %d | ", i);
			for(int u = 0; u < x[i]; u++) {
				System.out.print("*");
			}
			System.out.println("\n");
		}
	}
	public static int[] escrevernotas() {
		int nalunos, nota;
			
		System.out.println(" Insira numeros de alunos da turma: ");
		nalunos = sc.nextInt();
		int[] notas = new int[nalunos];
		
		for(int i = 0; i < notas.length; i++) {
			System.out.print("Nota aluno: ");
			nota = sc.nextInt();
			if(nota < 0 || nota > 20) {
				System.out.print(" Nota invalida!! \n");
			}else notas[i] = nota;
		} return notas;
	}
	public static int[] contar(int[] notas)  {
		int[] contar = new int[21];
		
		for(int i = 0; i < notas.length; i++) {
			int n = notas[i];
			contar[n]++;
		} return contar;
	}
}
