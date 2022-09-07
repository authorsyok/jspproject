package question;

public class Array3 {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		StringBuffer sb = new StringBuffer();
		
		for(int i = 1; i <= num; i++) {
			sb.append((int)(Math.random() * 100) + 1 + " ");
			
			if(i != 0 && i % 10 == 0) {
				sb.append("<br>");
			}
		}
		return sb.toString();
	}
}
