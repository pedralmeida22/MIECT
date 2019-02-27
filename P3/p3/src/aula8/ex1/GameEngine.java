package aula8.ex1;

public class GameEngine {
	private static final char vazio = '\0';
	private final char player1 = 'X';
	private final char player2 = 'O';
	private char[][] tabuleiro;
	private char lastPlayer;
	private int numMoves; 
	
	public GameEngine() {		
		this.tabuleiro = new char[3][3];
		this.lastPlayer = vazio;
		this.numMoves = 0;
	}
	
	public char lastPlayer() { return lastPlayer; }
	
	public boolean validCoords(int lin, int col) {
		return 	1 <= lin && lin <= 3 && 1 <= col && col <= 3;
	}
	
	public boolean emptyCoord(int lin, int col) {
		if(validCoords(lin, col)) 
			return tabuleiro[lin-1][col-1] == vazio;
		return false;
	}
	
	public boolean validMove(int lin, int col) {
		return validCoords(lin, col) && emptyCoord(lin, col);
	}
	
	public boolean winner() {
		for(int i = 0; i <= 2; i++) {
			if(tabuleiro[i][0] == tabuleiro[i][1] && tabuleiro[i][0] == tabuleiro[i][2] && tabuleiro[i][0] != 0) return true; // horizontal
			if(tabuleiro[0][i] == tabuleiro[1][i] && tabuleiro[0][i] == tabuleiro[2][i] && tabuleiro[0][i] != 0) return true; // vertical
		}
		if(tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[0][0] == tabuleiro[2][2] && tabuleiro[0][0] != 0) return true; // diagoanl \
		if(tabuleiro[0][2] == tabuleiro[1][1] && tabuleiro[0][2] == tabuleiro[2][0] && tabuleiro[0][2] != 0) return true; // diagonal /
		
		return false;
	}
	
	public boolean gameOver() {
		return winner() || numMoves >= 9;
	}
	
	public void move(int l, int c) {
		if(validMove(l, c)) {
			lastPlayer = (lastPlayer == player1) ? player2 : player1;
			tabuleiro[l-1][c-1] = lastPlayer;
			numMoves++;
		}
	}
		
	
}
