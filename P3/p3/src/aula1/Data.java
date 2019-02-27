package aula1;

public class Data {
	private int dia;
    private int mes;
    private int ano;
    
    public Data(int dia, int mes, int ano) {
    	this.dia = dia;
    	this.mes = mes;
    	this.ano = ano;
    }
    
    //getters
    public int dia() {
    	return dia;
    }
    public int mes() {
    	return mes;
    }
    public int ano() {
    	return ano;
    }
    
    public String toString() {
        return String.format("%02d-%02d-%04d", dia, mes, ano);
    }
    
    private static final
    int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    
    public static boolean bissexto(int ano) {
    	return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
    }
    
    public static int diasDoMes(int mes, int ano) {
      if(mes == 2 && bissexto(ano)){
  		return 29;
      }else{
    	  return diasMesComum[mes - 1];  //por causa da posicao no array
      }
    }
    
    public static boolean dataValida(int dia, int mes, int ano) {
    	if(mes < 1 || mes > 12) return false;
    	if(dia < 1 || dia > diasDoMes(mes, ano)) return false;
    	return true;
    }
}
