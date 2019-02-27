import java.util.*;
import java.io.*;

public class Ficheiros_ex7_1 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		String fileName; 
		System.out.println("Insiro nome do ficheiro: ");
		fileName = sc.nextLine();
		
		File cool = new File(fileName); 
		Scanner file = new Scanner(cool);
		
		if(!cool.exists())
			System.out.println(" Ficheiro nao existe!");
		else if(!cool.canRead())
			System.out.print("Nao e possivel ler ficheiro!");
		
		while(file.hasNextLine()){		
			System.out.println(file.nextLine());
		}
		file.close();
	}
}

