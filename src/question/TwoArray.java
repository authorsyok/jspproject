package question;

public class TwoArray {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		StringBuffer sb = new StringBuffer();		
		int[][] arr = new int[num][num];
		
		for(int i = 0; i < arr.length; i++) {
			for(int j = 0; j < arr[i].length; j++) {
				arr[i][j] = (int)(Math.random() * 10) + 1;
			}
		}
		
		for(int i = 0; i < arr.length; i++) {
			for(int j = 0; j < arr[i].length; j++) {
				if(j == arr[i].length-1) {
					sb.append(arr[i][j] + "<br>");
				}else {
					sb.append(arr[i][j] + " ");
				}
			}
		}
		return sb.toString();
	}
}
