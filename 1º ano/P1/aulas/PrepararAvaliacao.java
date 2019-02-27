import java.util.*;


public class PrepararAvaliacao {
	static Scanner sc = new Scanner(System.in);
	static final int n=-20, m=30;
	public static void main (String[] args) {
		
		int x, k;
		int r, mp=0;
		System.out.print(" Valor x: ");
		x = sc.nextInt();
		System.out.print(" Valor k: ");
		k = sc.nextInt();
		
		for (int i=0; i<=x; i++){
			r = gerar(); 
			System.out.printf(" gerar = %d; gerar1=%d; gerar2 = %d; gerar3 = %d\n", gerar(), gerar1(), gerar2(), gerar3() );
			if(i==0) {mp = k-r; continue;}
			if(r >(r - mp)) mp = r;
		}
		System.out.printf(" Mp = %d ", mp);
		
	}
		
		public static int gerar()
		{return (int)((m-n)*Math.random())+ n; }
		
		//estas nao interesao para o exercicio
		// e so para saber a diferença entre as funçoes
		static int gerar1()
		{return (int)((m-n)*Math.random()); }
		
		static int gerar2()
		{return (int)Math.random();}
		
		static double gerar3()
		{return (double)Math.random();}
		
		
		
	}


