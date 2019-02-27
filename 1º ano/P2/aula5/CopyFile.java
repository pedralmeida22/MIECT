import java.util.*;
import java.io.*;
import static java.lang.System.*;


public class CopyFile {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		if(args.length != 2){
			err.println("ERROR: Argumentos invalidos");
		}
		File fin = new File(args[0]);
		File fout = new File(args[1]);
		
		//Para fin
		if(!fin.exists()){
			err.println("File " + args[0] + " does not exists");
			exit(2);
		}
		if (fin.isDirectory()){
			err.println("ERROR: input file " + args[0] + " is a directory!");
			exit(3);
		}
 
		if (!fin.canRead()){
			err.println("ERROR: cannot read from input file " + args[0] + "!");
			exit(4);
		}
		 
		if (!fin.canWrite()){
			err.println("ERROR: cannot read from input file " + args[0] + "!");
			exit(5);
		}
		
		//Para fout
		if(fout.exists()){
			String r = null;
			System.out.println("File " + args[1] + " already exists! Do you want to overwrite it? (y/n)");
			do{
				r = sc.nextLine();
				switch(r){
					case "y": case "Y":
						break;
					case "n": case "N":
						exit(2);
				}
			}while(!(r.equals("y") || r.equals("Y") || r.equals("n") || r.equals("N")));
		}
		if (fout.isDirectory()){
			err.println("ERROR: input file " + args[1] + " is a directory!");
			exit(3);
		}		 
		if (!fin.canWrite()){
			err.println("ERROR: cannot read from input file " + args[0] + "!");
			exit(5);
		}
		
		
		try{
			Scanner scf = new Scanner(fin);
			PrintWriter pwf = new PrintWriter(fout);
			
			while(scf.hasNextLine()){
				pwf.println(scf.nextLine());
			}
			scf.close();
			pwf.close();
			
		}catch(IOException e){
			err.print("ERROR while copying file!");
			exit(2);
		}
	}
}

