
public class Unit {
	private UnitType type;
	private String grandeza;
	
	public Unit(UnitType t, String g){
		this.type = t;
		this.grandeza = g;
	}

	public UnitType getType() {
		return type;
	}

	public String getGrandeza() {
		return grandeza;
	}

	@Override
	public String toString() {
		return "Unit [type=" + type + ", grandeza=" + grandeza + "]";
	}
}


