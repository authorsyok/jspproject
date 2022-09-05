package question;

public class Triangle {
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
	
	public String process() {
		String str = "";
		
		if((x + y) > z && (x + z) > y && (y + z) > x) {
			str = "입력된 3변의 값 " + x + ", " + y + ", " + z + "는 삼각형이 된다";
		}else {
			str = "삼각형이 아니다";
		}
		return str;
	}
}
