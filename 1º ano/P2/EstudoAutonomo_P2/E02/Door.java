
public class Door {
	private int r1;
	private int r2;
	private double w;
	private double h;

  public Door(int r1, int r2, double w, double h) {
	this.r1 = r1;
	this.r2 = r2;
	this.w = w;
	this.h = h;
  }
  public double area(){
	  return w * h;
  }
  public int ri(){
	  return r1;
  }
  public int r2(){
	  return r2;
  }
}

