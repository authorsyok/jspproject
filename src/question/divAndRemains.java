package question;

public class divAndRemains {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process(int i) {
		String str = "";
		
		if(i / 10 == i % 10) 
			str = "10의 자리와 1의 자리가 같다";
		else
			str = "10의 자리와 1의 자리가 다르다";
		return str;
	}
}
