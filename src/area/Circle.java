package area;

public class Circle {
	private int r;

	public int getR() {
		return r;
	}

	public void setR(int r) {
		this.r = r;
	}
	
	public double process(int r) {
		return 3.14 * r * r;
	}
}
