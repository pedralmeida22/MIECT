import java.util.*;


public class Tentativas2 {
	
	public static void main (String args[]) {
		Scanner sc = new Scanner(System.in);
		
		double sent = sc.nextInt();
		double max, min, total;
		max= sent;
		min = sent;
		total = sent;
		int count = 1;
		while(true){
			double x = sc.nextDouble();
			if(x==sent){
				System.out.println("Max: " + max);
				System.out.println("Min: " + min);
				System.out.println("Media: " + total/count);
				System.out.println("Numero de elementos: " + count);
				System.exit(0);
			}
			count++;
			if(x>max) max = x;
			if(x<min) min = x;
			total = total + x;
			
		}
	}
}

