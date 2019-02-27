import java.util.*;
import java.io.*;

public class Ficheiros_ex1 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
	String nome = new String();
	
	File fin = new File(nome);
	
	do{
		System.out.print("Nome do ficheiro: ");
		nome = sc.nextLine();
		if(!fin.isFile()) {
			System.out.println("Ficheiro nao existe");
		} else if(!fin.canRead()) {
			System.out.println
			("Impossível de ler");
		}
	}while(!fin.isFile() || !fin.canRead());
	
	Scanner lerF = new Scanner(fin);
	while(lerF.hasNextLine()) {
		System.out.println(lerF.nextLine());
	}
	lerF.close();
	}
}

