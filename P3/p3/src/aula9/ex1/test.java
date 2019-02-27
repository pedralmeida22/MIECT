package aula9.ex1;

import java.io.*;

public class test {

	public static void main(String[] args) throws IOException {
		ScannerAbeirense sca = null;
		
		if(args.length == 1) 
			sca = new ScannerAbeirense(args[0]);
		else 
			sca = new ScannerAbeirense("src/aula9/ex1/scAbeiro.txt");
		
		while(sca.hasNext()) {
			System.out.println(sca.next());
		}
		sca.close();
	}

}