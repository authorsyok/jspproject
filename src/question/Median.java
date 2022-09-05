package question;

public class Median {
	private int x, y, z;

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public int getZ() {
		return z;
	}

	public void setZ(int z) {
		this.z = z;
	}
	
	public int process() {
		int median = x;
		
		if((x > y && x < z) || (x > z && x < y))
			median = x;
		else if((y > x && y < z) || (y > z && y < x))
			median = y;
		else 
			median = z;
		return median;
	}
}
