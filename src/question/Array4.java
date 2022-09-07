package question;

public class Array4 {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		StringBuffer sb = new StringBuffer();
		
		int[] arr = new int[num];
		
		for (int i = 0; i < arr.length; i++) {
			arr[i]=(int)(Math.random()*100)+1;
			for (int j = 0; j < i; j++) {
				if (arr[i]==arr[j]) {
					i--;
				}
			}
		}
		
		for (int i = 0; i < arr.length; i++) {
			if (i==0) {
				sb.append(arr[i]+"    ");
			} else {
				if (i%10==0) {
					sb.append("<br>");
				}
				sb.append(arr[i]+"    ");
			}
		}
		return sb.toString();
	}
}
