package aula9.ex3;

public abstract class TesteIterador {
	public static void main(String[] args) {
		VectorPessoas vp = new VectorPessoas();
		for (int i = 0; i < 10; i++)
			vp.addPessoa(new Pessoa("Bebé no Vector " + i, 1000 + i, Data.today()));
		Iterator vec = vp.iterator();
		while (vec.hasNext())
			System.out.println(vec.next());
		
		
		ListaPessoas lp = new ListaPessoas();
		for (int i = 0; i < 10; i++)
			lp.addPessoa(new Pessoa("Bebé na Lista " + i, 2000 + i, Data.today()));
		Iterator it = lp.iterator();
		while (it.hasNext())
			System.out.println(it.next());
		
		
		BFIteratorVector vetor = new BFIteratorVector();
		for(int i = 0; i < 10; i++) {
			vetor.addPessoa(new Pessoa("jovem no vector " + i, 3000 + i, Data.today()));
		}
		BFIterator bfiterator =  vetor.iterator();
		while(bfiterator.hasNext()) {
			System.out.println(bfiterator.next());
		}
		
		BFIteratorLista lista = new BFIteratorLista();
		for (int i = 0; i < 10; i++) {
			lista.addPessoa(new Pessoa("jovem na lista " + i, 4000 + i, Data.today()));
		}
		BFIterator bfit = lista.iterator();
		while(bfit.hasNext())
			System.out.println(bfit.next());
		while(bfit.hasPrevious())
			System.out.println(bfit.previous());
	}
}
