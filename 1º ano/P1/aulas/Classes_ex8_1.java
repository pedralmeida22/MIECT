import java.util.Scanner;

public class Classes_ex8_1 {
  static final Scanner sc = new Scanner(System.in);
  
  public static void main(String[] args) {
    Hora inicio;  // tem de definir o novo tipo Hora!
    Hora fim;
    
    inicio = new Hora();
    inicio.h = 9;
    inicio.m = 23;
    inicio.s = 5;
    
    System.out.print("Comecou as ");
    printHora(inicio);  // crie esta função!
    System.out.println(".");
    System.out.println("Quando termina?");
    fim = lerHora();  // crie esta função!
    System.out.print("Inicio: ");
    printHora(inicio);
    System.out.print(" Fim: ");
    printHora(fim);
  }
  public static void printHora(Hora hora) {
	  System.out.printf("%02d:%02d:%02d %n", hora.h, hora.m, hora.s);
  }
  public static Hora lerHora() {
	  Hora devolver = new Hora();
	  
	  System.out.print("Horas: ");
	  devolver.h = sc.nextInt();
	  System.out.print("Minutos: ");
	  devolver.m = sc.nextInt();
	  System.out.print("Segundos: ");
	  devolver.s = sc.nextInt();
	  return devolver; 
  }
  
}
class Hora {
	int h, m, s;
}
/**
EXEMPLO do pretendido:
$ java TestaHora
Começou às 09:23:05.
Quando termina?
horas? 11
minutos? 72
minutos? 7
segundos? 2
Início: 09:23:05 Fim: 11:07:02.
**/

