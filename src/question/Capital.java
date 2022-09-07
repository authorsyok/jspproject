package question;

public class Capital {
	private char c;

	public char getC() {
		return c;
	}

	public void setC(char c) {
		this.c = c;
	}
	
	public String process() {
		StringBuffer sb = new StringBuffer();
		
		for(int i = (int)c; i >= 65; i--) {
			for(int j = 65; j <= i; j++) {
				sb.append((char)j);
			}
			sb.append("<br>");
		}
		return sb.toString();
	}
}
