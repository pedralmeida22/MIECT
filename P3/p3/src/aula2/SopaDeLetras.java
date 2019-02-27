package aula2;
import java.util.*;
import java.io.*;

public class SopaDeLetras {
	@SuppressWarnings("unused")
	private char[][] grelha; 
	
	public SopaDeLetras(String file){
		grelha = new char[80][80];
		Scanner scf = null;
		try {
			scf = new Scanner(new File(file));
		}catch(FileNotFoundException e) {
			System.out.println("Ficheiro " + file + " nao existe.");
			System.exit(1);
		}
		scf.close();
	}
}
