package question;

public class Multiple {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		String str1 = "";
		String str2 = "";
		String str3 = "";
		
		if(num % 3 == 0)
			str1 = "3의 배수이다.";
		if(num % 5 == 0)
			str2 = "5의 배수이다.";
		if(num % 8 == 0)
			str3 = "8의 배수이다.";
		return str1 + "<br>" + str2 + "<br>" + str3 + "<br>";
	}
	
}
