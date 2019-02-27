import java.util.*;
import java.io.*;
//nao funciona!

public class CutColumn {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		int nColumn = Integer.parseInt(args[0]);
		String fileName = args[1];
		
		lerColunaN(nColumn, fileName);
		
	}
	public static void lerColunaN(int n, String file1name) throws IOException {
		File file1 = new File(file1name);
		File file2 = new File("nColumn.txt");
		Scanner scf = new Scanner(file1);
		PrintWriter pw = new PrintWriter(file2);
		
		while(scf.hasNextLine()){
			for(int i = 0; i < n-1; i++){
				scf.next();
			}
			pw.write(scf.next());
		}
		pw.close();
		scf.close();
	}
}

