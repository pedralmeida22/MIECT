package aula9.ex1;

import java.io.*;
import java.util.*;

public class ScannerAbeirense implements Iterator<String>, Closeable {
	private Scanner sc;
	
	public ScannerAbeirense(String filename) throws IOException {
		sc = new Scanner(new File(filename));	
	}

	@Override
	public boolean hasNext() {
		return sc.hasNext();
	}

	@Override
	public String next() {
		String temp = sc.next();
		temp = temp.replaceAll("v", "b");
		temp = temp.replaceAll("V" ,"B");
		
		return temp;
	}

	@Override
	public void close() throws IOException {
		sc.close();
	}	

}
