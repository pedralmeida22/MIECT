package preparation.clinica;

import java.io.Serializable;

public abstract class Mobiliario implements Serializable {
	private static final long serialVersionUID = 1L;
	private String designacao;
	private final int id;
	private Material material;
	
	public Mobiliario(String d, int id, Material m) {
		this.designacao = d;
		this.id = id;
		this.material = m;
	}

	public void setDesignacao(String designacao) {
		this.designacao = designacao;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

	public String getDesignacao() {
		return designacao;
	}

	public int getId() {
		return id;
	}

	public Material getMaterial() {
		return material;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((designacao == null) ? 0 : designacao.hashCode());
		result = prime * result + id;
		result = prime * result + ((material == null) ? 0 : material.hashCode());
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
		Mobiliario other = (Mobiliario) obj;
		if (designacao == null) {
			if (other.designacao != null)
				return false;
		} else if (!designacao.equals(other.designacao))
			return false;
		if (id != other.id)
			return false;
		if (material != other.material)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Mobiliario: " + designacao + ", id=" + id + ", feita de " + material;
	}
	
	
}
