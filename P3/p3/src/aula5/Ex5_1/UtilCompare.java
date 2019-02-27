package aula5.Ex5_1;

public class UtilCompare {
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static Comparable findMax(Comparable[] listaFig) {
		int indexMax = 0;
		for (int i = 0; i < listaFig.length; i++) {
			if(listaFig[i] != null && listaFig[i].compareTo(listaFig[indexMax]) > 0)
				indexMax = i;
		}
		return listaFig[indexMax];
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void sortArray(Comparable[] listaFig) {
		for(int i = listaFig.length-1; i >= 0; i--) {
			for(int j = 0; j < i; j++) {
				if(listaFig[j].compareTo(listaFig[j+1])>0) {
					Comparable tmp = listaFig[j];
					listaFig[j] = listaFig[j+1];
					listaFig[j+1] = tmp;
				}
			}
		}
	}
}
