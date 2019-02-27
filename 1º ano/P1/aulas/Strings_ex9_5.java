import java.util.*;

public class Strings_ex9_5 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int num, base, convertido;
		System.out.println("Insira o numero que pretende converter: ");
		num = sc.nextInt();
		do{
			System.out.println("Nova base: ");
			base = sc.nextInt();
		} while(base < 0 || base > 10);
		System.out.printf(" O numero %d na base %d e %d ", num, base, convertBase(num, base)); 
	}
	public static int convertBase(int num, int base) {
		do {
			num = (int)((num / base)+(num % base));
        } while(num % base <= base);
		return num;
	}
}

