
public class Variable extends Unit {
	private String name;
	private double value;
	
	public Variable(UnitType t, String g, String n, double v) {
		super(t, g);
		this.name = n;
		this.value = v;
	}

	public String getName() {
		return name;
	}

	public double getValue() {
		return value;
	}

	@Override
	public String toString() {
		return "Variable [name=" + name + ", value=" + value + "]";
	}
	
}
