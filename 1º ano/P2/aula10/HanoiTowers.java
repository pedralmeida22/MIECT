import static java.lang.System.*;
import java.util.Scanner;
import p2utils.Stack;

public class HanoiTowers {
	Stack<Integer> TA = new Stack<Integer>();
	Stack<Integer> TB = new Stack<Integer>();
	Stack<Integer> TC = new Stack<Integer>();
	private static int nMoves = 0;
	
	public HanoiTowers(int n){
		assert n > 0;
		
		this.n = n;
		for(int i = n; i >= 1; i--){
			TA.push();
		}
	}
	public static void moveDisk(Stack<Integer> TA, Stack<Integer> TC){
		TC.push(TA.top());
		TA.pop();
		nMoves++;
	}
	public void solve(){
		solve(TA.size(), TA, TB, TC);
	}
	public static void solve(int n, Stack<Integer> origem, Stack<Integer> destino, Stack<Integer> auxiliar){
		assert n > 0;
		
		if(n >= 1){
			solve(n-1, origem, auxiliar, destino);
			moveDisk(origem, destino);
			solve(n-1, auxiliar, destino, origem);
		}
	}
}
