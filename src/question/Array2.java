package question;

public class Array2 {
	private int num1;
	private int num2;
	private int num3;
	private int num4;
	private int num5;
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public int getNum3() {
		return num3;
	}
	public void setNum3(int num3) {
		this.num3 = num3;
	}
	public int getNum4() {
		return num4;
	}
	public void setNum4(int num4) {
		this.num4 = num4;
	}
	public int getNum5() {
		return num5;
	}
	public void setNum5(int num5) {
		this.num5 = num5;
	}
	
	public String process(int[] array) {
		StringBuffer sb = new StringBuffer();
		
		for(int i = 0; i < 5; i++) {
			if(array[i] % 3 == 0) {
				sb.append(array[i] + " ");
			}
		}
		return sb.toString();
	}
	
}
