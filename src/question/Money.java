package question;

public class Money {
	private int money;

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}
	
	public String process() {
		StringBuffer sb = new StringBuffer();
		
		int[] array = {50000, 10000, 1000, 100, 10, 1};
		int result = 0;
		
		for(int i = 0; i < array.length; i++) {
			result = money / array[i];
		
			if(money > 0) {
				sb.append(array[i] + "원 짜리 : " + result + "개 <br>");
				money %= array[i];
			}
		}
		return sb.toString();
	}
}
