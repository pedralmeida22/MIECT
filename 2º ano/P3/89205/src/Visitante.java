
public class Visitante {
	private final int num;
	private static int currentN = 1;
	private String data;
	
	Visitante(String d){
		num = currentN;
		currentN++;
		this.data = d;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getNum() {
		return num;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((data == null) ? 0 : data.hashCode());
		result = prime * result + num;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Visitante other = (Visitante) obj;
		if (data == null) {
			if (other.data != null)
				return false;
		} else if (!data.equals(other.data))
			return false;
		if (num != other.num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Visitante [num=" + num + ", entrada=" + data + "]";
	}
	
	
	
}
