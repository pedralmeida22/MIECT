import java.util.*;
import java.io.*;

public class TestCommandLine {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		File fout = new File("TestCommandLine.txt");
		PrintWriter pw = new PrintWriter(fout);
		String nameIn;
		
		System.out.println("args.lenth = " + args.length);
		for(int i=0; i < args.length; i++) {
			pw.println(args[i]);
			System.out.println(args[i]);
		}
		pw.close();
	}
}

