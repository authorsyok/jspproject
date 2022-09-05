package question;

public class Three {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process(int i) {
		String str = "";
		if(i % 3 == 0) 
			str = "3의 배수입니다";
		else
			str = "3의 배수가 아닙니다";
		return str;
	}
}
