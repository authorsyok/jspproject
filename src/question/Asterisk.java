package question;

public class Asterisk {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		String str = "";
		
		for(int i = num; i > 0; i--) {
			for(int j = 0; j < i; j++) {
				str += "*";
			}
			str += "<br>";
		}
		return str;
	}
}
