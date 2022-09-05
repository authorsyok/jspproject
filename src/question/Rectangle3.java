package question;

public class Rectangle3 {
	private int x, y;

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
	
	public String process(int i, int j) {
		String str = "";
		
		if((i >= 100 && j >= 100) && (i <= 200 && j <= 200))
			str = "사각형 안에 있다.";
		else
			str = "사각형 밖에 있다.";
		return str;
	}
}
