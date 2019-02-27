import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
	public static void main(String[] args) throws IOException {
		assert args.length > 0 : "Sem argumentos";
		
		SortedListInt list = new SortedListInt();
		for(int i = 0; i < args.length; i++){
			File fin = new File(args[i]);
			Scanner scf = new Scanner(fin);
			
			while(scf.hasNext()){
				try{
					int n = Integer.parseInt(scf.next());
					list.insert(n);
				}catch(Exception e){}
			}			
			scf.close();
		}
		out.println("Tem " + list.size() + " numeros inteiros");
		while(!(list.isEmpty())){
			out.println(list.first());
			list.removeFirst();
		}
	}
}


