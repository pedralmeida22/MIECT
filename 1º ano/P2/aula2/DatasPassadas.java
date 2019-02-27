import static java.lang.System.*;

public class DatasPassadas {

  public static void main(String[] args) {
    Data atual = new Data();
    Data natal = new Data(25, 12, atual.ano()-1);
    
    while(atual.ano() != natal.ano() || atual.mes() != natal.mes() || atual.dia() != natal.dia()){
		System.out.println(natal.extenso());
		natal.seguinte();
	}
  }

}
