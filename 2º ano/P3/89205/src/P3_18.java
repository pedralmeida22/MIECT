import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

// Notas:
// Não altere o código apresentado
// Deve completar o código da alinea 2
// Comente o código com erros para garantir que vai executando parcialmente

public class P3_18 {

	public static void main(String[] args) throws IOException {
		PrintStream fl = new PrintStream(new File("p31819B.txt"));
		test(System.out); // executa e escreve na consola
		test(fl); // executa e escreve no ficheiro
		fl.close();
	}

	private static void test(PrintStream out) throws IOException {
		alinea1(out);
		alinea2(out);
	}

	private static void alinea1(PrintStream out) {
		out.println("\nAlínea 1) ----------------------------------\n");

		Feira bf = new Feira("Indústria 5.0", "Parque de Exposições de Aveiro");
		
		StandEmpresa exp1 = new StandEmpresa("102", "TravelsToTheMoon", new Participante("bmarq87756@sapinho.pt", "Belinda Marques"));
		exp1.add(new Participante("pedro@coldmail.com", "Pedro Silva"));
		exp1.add(new Participante("bm1880@sapinho.pt", "Anabela Lima"));
		for (Participante c : exp1.membros())
			out.println(c);
		out.println();
		
		List<Participante> lista = new ArrayList<>();
		Participante p1 = new Participante("jmartin27@kmail.pt", "Joaquim Martins");
		Participante p2 = new Participante("lopesmar@mymail.com", "Maria Lopes");
		lista.add(p1);
		lista.add(p2);
		StandEmpresa exp2 = new StandEmpresa("103", "4DPrinters", p1, lista);
		out.println("Responsável: " + exp2.responsavel());
		exp2.membros().forEach(a->out.println(a)); out.println();
		
		StandServicos pst1 = new StandServicos("501", "Paparoca", new Participante("chef86@cookmail.pt", "Ana Nunes"), Servico.RESTAURANTE );
		StandServicos pst2 = new StandServicos("502", "BebeUmCopo", new Participante("depois@uantes.pt", "Catarina Andrade"), Servico.CAFETARIA );
		
		bf.add(exp1); bf.add(exp2); bf.add(pst1); bf.add(pst2);

		bf.add(new Visitante("20181219:13:30")); 
		bf.add(new Visitante("20181219:13:31")); 
		bf.add(new Visitante("20181219:13:35")); 
		bf.add(new Visitante("20181219:13:39")); 
		bf.add(new Visitante("20181219:13:39")); 
		/*
		StandOrganizacao so = StandOrganizacao.instance("001", "Feiras&Companhia", new Participante("admin@coldmail.com", "Luísa Pereira"), "960707070");
		bf.add(so);
		*/
		
		out.println(bf);
		out.println("Emails dos responsáveis: " + bf.emailsDosResponsaveis());  /*
		out.println("Visitantes entre as \"20181219:13:31\" e as \"20181219:13:35\": " + bf.visitantesEntreDatas("20181219:13:31", "20181219:13:35"));
		*/
		out.println(bf.getServico(Servico.RESTAURANTE)); // devolve todos os stands de serviço do tipo indicado
		
	}
	
	private static void alinea2(PrintStream out) throws IOException {
		out.println("\nAlínea 2) ----------------------------------\n");
		Feira fest = null;

		// Adicione a seguir o código necessário para a leitura do ficheiro 

        List<String> lines = Files.readAllLines(Paths.get("f8575.txt"));
        
        
        // não modifique o metodo a partir daqui
        
        /*
		if (fest != null) {
			out.println(fest);
			Set<Expositor> exps = fest.getStandsOrderedByCodigo();
			for (Expositor e: exps)
				out.println(e);
		}
		*/
	}
}