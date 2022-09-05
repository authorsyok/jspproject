package question;

public class ThreeSixNine {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		String str = "";
		
		int count = 0;
		int a = num / 10;
		int b = num % 10;
		
		if(a % 3 == 0) {
			count++;
		}
		if(b % 3 == 0 && b != 0) {
			count++;
		}
		if(count == 1) 
			str = "박수 짝";
		else if(count == 2) 
			str = "박수 짝짝";
		else 
			str = "박수 x";
		return str;
	}
}
