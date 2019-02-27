import static java.lang.System.*;
import java.util.*;

public class TestComplex {
  // Exemplo simples de utilização da class Complex
  static Scanner sc = new Scanner(System.in);
  public static void main(String[] args) {
	  double real, imag;
	  if(args.length == 2){
		  real = Double.parseDouble(args[0]);
		  imag = Double.parseDouble(args[1]);
	  }else{
		  out.println("Re: ");
		  real = sc.nextDouble();
		  out.println("Im: ");
		  imag = sc.nextDouble();
	  }
    Complex a = new Complex(real, imag);   

    // Vamos usar métodos do objeto a
    out.println("(" + a.real() + " + " + a.imag() + "i)");
    out.println("  parte real = " + a.real());
    out.println("  parte imaginaria = " + a.imag());
    out.println("  modulo = " + a.abs());
    out.printf("  argumento =  %2.2f\n", a.arg());
  }

}

