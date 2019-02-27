import java.util.*;

public class Arrays_ex6_7 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int[][] listnum = pedirnum();
		listnum = organizar(listnum);
		for(int i = 0; i < listnum[0].length; i++){
			System.out.println("O numero " + listnum[0][i] + " aparece " + listnum[1][i] + " vezes");
		}
	}
	public static int[][] pedirnum()  {
		int num;
		int[][] listnum = new int[2][100];
		boolean counted;
		System.out.println(" Lista:");
		for(int i = 0; i < 100;)  {
			System.out.print(" Numero: ");
			num = sc.nextInt();
			counted = false;
			for(int j = 0; j < 100; j++){
				
				if(listnum[0][j] == num && !counted){
					listnum[1][j]++;
					counted = true;
					break;
				}
			}
			if(!counted){
				listnum[0][i] = num;
				listnum[1][i] ++;
				i++;
				
			}
			if(num < 0) break;
		}
		return listnum;
	}
	
	public static int[][] organizar(int[][] list){
		int count = 0;
		for(int i = 0; i < list[0].length; i++){
			if(!(list[0][i] < 0)){
				count++;
			}else break;
		}
		int[][] newList = new int[2][count];
		for(int i = 0; i < newList.length; i++){
			for(int j = 0; j < newList[i].length; j++){
				newList[i][j] = list[i][j];
			}
		}
		return newList;
	}
}

