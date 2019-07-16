package mpei;

public class Bloom_Filter {
	
	private int[] bloom_filter;
	private int numHash;
	
	public Bloom_Filter(int size,int numHash) {
		this.numHash= numHash;
		bloom_filter = new int[size];
	}
	
	public void addElement(String value) {  	// DJB2 HashFunction
		int index = 5381;
		for(int i = 0; i < numHash; i++) {
			index += i;
			for(int j = 0; j < value.length(); j++) {
				index = ((index << 5) + index) + value.charAt(j);
				index = index % bloom_filter.length;
			}
			bloom_filter[index]++;
		}
	}
	
	public boolean contains(String value) {   // Verificar se determinado
		int index = 5381;				      // valor pertence ao conjunto
		
		for(int i=0; i<numHash; i++) {
			index += i;
			for(int j = 0; j < value.length(); j++) {
				index = ((index << 5) + index) + value.charAt(j);
				index = index % bloom_filter.length;
			}
	        
			if(bloom_filter[index] == 0) {
				return false;
			}
		}
		return true;
	}
	
	
	public void counterBloom_Filter(String value) {
		int index = 5381;						// Conta a quantida de vezes
		int contador = 0;					// que determinado elemento ocorre no conjunto
		for(int i=0; i<numHash; i++) {
			index += i;
			for(int j = 0; j < value.length(); j++) {
				index = ((index << 5) + index) + value.charAt(j);
				index = index % bloom_filter.length;	
			}
			if(i == 0) {
				contador = bloom_filter[index];
			}
			else if(bloom_filter[index] != contador) { 
				contador = 0;
				break;
			}
		}
		System.out.println(bloom_filter[index]);
	}
}
