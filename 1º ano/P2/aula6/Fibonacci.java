import static java.lang.System.*;

public class Fibonacci {
	
	static int[] fiboTable;

  public static void main(String[] args) {
    if (args.length < 1) {
      out.println("USO: java -ea Fibonacci N [N ...]");
      exit(1);
    }

    for(int i = 0; i < args.length; i++) {
      int n = Integer.parseInt(args[i]);
      fiboTable = new int[n + 1];
      long time = nanoTime();  // System.nanoTime() gives the time in ns.
      int f = fibonacci(n);
      time = nanoTime() - time;
      out.printf("fibonacci(%d) = %d (%d ns)\n", n, f, time);
    }
    
    // Alguns testes:
    assert fibonacci(0) == 0;
    assert fibonacci(1) == 1;
    assert fibonacci(2) == 1;
    assert fibonacci(5) == 5;
  }

  public static int fibonacci(int n) {
    assert n >= 0;
    
    if(n<2) return n;
    else{
		if(fiboTable[n] > 0)
			return fiboTable[n];
		else{
			fiboTable[n] = fibonacci(n-2) + fibonacci(n-1);
			return fiboTable[n]; 
		}
	}
			
  }

}
