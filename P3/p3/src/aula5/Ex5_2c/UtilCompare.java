package aula5.Ex5_2c;

public class UtilCompare {
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static Comparable findMax(Comparable[] lista) {
		int indexMax = 0;
		for (int i = 0; i < lista.length; i++) {
			if(lista[i] != null && lista[i].compareTo(lista[indexMax]) > 0)
				indexMax = i;
		}
		return lista[indexMax];
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void sortArray(Comparable[] lista) {
		for(int i = lista.length-1; i >= 0; i--) {
			for(int j = 0; j < i; j++) {
				if(lista[j].compareTo(lista[j+1]) > 0) {
					Comparable tmp = lista[j];
					lista[j] = lista[j+1];
					lista[j+1] = tmp;
				}
			}
		}
	}
}
