package question;

public class Alphabet {
	private char c;

	public char getC() {
		return c;
	}

	public void setC(char c) {
		this.c = c;
	}
	
	public String process() {
		String str = "";
		
		for(int i = 97; i <= (int)c; i++) {
			str += (char)i;
		}
		return str;
	}
}
