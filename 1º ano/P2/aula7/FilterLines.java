import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class FilterLines
{
  public static void main(String[] args) throws IOException
  {
    if (args.length != 1) {
      err.printf("Usage: java -ea FilterLines text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);

    // Criar listas para as linhas curtas, médias e longas.
    LinkedList<String> llShort = new LinkedList<String>();
    LinkedList<String> llMedium = new LinkedList<String>();
    LinkedList<String> llLarge = new LinkedList<String>();

    Scanner sf = new Scanner(fil);
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    while (sf.hasNextLine()) {
      String line = sf.nextLine();
      // Guardar linha na lista apropriada, consoante o tamanho.
      if(line.length() < 20){
		  llShort.addLast(line);
	  }
	  else if(line.length() >= 20 && line.length() < 40){
		  llMedium.addLast(line);
	  }
	  else if(line.length() >= 40){
		  llLarge.addLast(line);
	  }

    }
    sf.close();

    // Escrever conteúdo das listas...
    out.println("Curtas---|---------|---------|---------|---------");
	llShort.print();
	
    out.println("Medias---|---------|---------|---------|---------");
	llMedium.print();
	
    out.println("Longas---|---------|---------|---------|---------");
	llLarge.print();	
  }

}
