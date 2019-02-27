import static java.lang.System.*;
import java.util.*;
import jogos.*;
import java.io.*;
    
public class JogaJogoDoGalo {
  private static Scanner sin = new Scanner(in);
  public static void main(String[] args) {
	int lin = 0;
	int col = 0;
    char jogador1 = 'X';
    char jogador2 = 'O';
    JogoDoGalo jogo = new JogoDoGalo(jogador1, jogador2);
    jogo.mostraTabuleiro();
    while (!jogo.terminado()) {
      out.print("(lin col): ");
      try{
		lin = sin.nextInt();
	  }catch(InputMismatchException e){
		  err.println("Linha invalida!!");
	  }
	  try{
		col = sin.nextInt();  
	  }catch(InputMismatchException e){
		  err.println("Coluna invalida!!");
	  }
      jogo.jogada(lin, col);
      jogo.mostraTabuleiro();
    }
    out.println();
    if (!jogo.ultimoJogadorGanhou()) {
      out.println("Jogador "+jogo.ultimoJogador()+" ganhou!");
    } else {
      out.println("Jogo empatado!");
    }
  }
}

