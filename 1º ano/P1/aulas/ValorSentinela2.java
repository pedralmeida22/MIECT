import java.util.*;


public class ValorSentinela2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
	
	double sent = sc.nextInt();
	double max, min, total;
	int count;
	max=sent;
	min=sent;
	total=sent;
	count = 1;
	
	while(true){
		double x = sc.nextDouble();
		if (x==sent) {
			System.out.println("Max = " + max);  
			System.out.println("Min = " + min);
			System.out.println("Media = " + total/count);
			System.out.println("Numero de elementos: " + count);
			System.exit(1);
			
		}
		count++;
		if (x>max) max=x;
		else if (x<min) min=x;
		total = total + x;
	}
	
	}
}

