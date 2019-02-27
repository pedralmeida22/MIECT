import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    Calendar today = Calendar.getInstance();

    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
  //construtor a iniciar com string "2018-02-28"
  public Data(String s_data){
	  String[] tokens = s_data.split("-");
	  
	  if(tokens.length == 3){
		  ano = Integer.parseInt(tokens[0]);
		  mes = Integer.parseInt(tokens[1]);
		  dia = Integer.parseInt(tokens[2]);
	  }else{
		  System.err.print("Data Inválida");
		  System.exit(0);
	  }
 }
 public int compareTo(Data s_data){
	 if(this.ano != s_data.ano){
		 return (this.ano - s_data.ano)*366;
	 }
	 if (this.mes != s_data.mes){
		 return (this.mes - s_data.mes);
	 }
	 return (this.dia - s_data.dia);
 }
  

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  //getter
  public int ano(){
	  return ano;
  }
  public int mes(){
	  return mes;
  }
  public int dia(){
	  return dia;
  }

  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  
  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
    if(mes == 2 && bissexto(ano)){
		return 29;
	}else{
		return diasMesComum[mes - 1];
	}
  }

  /** Devolve o mes da data por extenso. */
  public String mesExtenso() {
    switch(mes){
		case 1: return "Janeiro";
		case 2: return "Fevereiro";
		case 3: return "Março";
		case 4: return "Abril";
		case 5: return "Maio";
		case 6: return "Junho";
		case 7: return "Julho";
		case 8: return "Agosto";
		case 9: return "Setembro";
		case 10: return "Outubro";
		case 11: return "Novembro";
		case 12: return "Dezembro";
		default: return "Mes Invalido!";
	}
  }

 /** Devolve esta data por extenso. */
  public String extenso() {
    return String.format("%d de %s de % d", dia, mesExtenso(), ano);
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
    if(mes < 1 || mes > 12) return false;
    if(dia < 1 || dia > diasDoMes(mes, ano)) return false;
    return true;
  }

 public void seguinte() {
    if(mes == 12 && dia == 31){
		dia = 1;
		mes = 1;
		ano++;
	}
    else if(dia == diasDoMes(mes, ano)){
		dia = 1;
		mes++;
	}else{
		dia++;
	}
  }
}

