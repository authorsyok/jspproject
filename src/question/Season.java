package question;

public class Season {
	int month;

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}
	
	public String process(int month) {
		String str = "";
		
		switch(month) {
		case 3:
		case 4:
		case 5:
			str = "봄";
			break;
		case 6:
		case 7:
		case 8:
			str = "여름";
			break;
		case 9:
		case 10:
		case 11:
			str = "가을";
			break;
		case 12:
		case 1:
		case 2:
			str = "겨울";
			break;
		}
		return str;
		
	}
}
