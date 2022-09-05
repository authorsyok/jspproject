package question;

public class Arithmetic {
	private int op1, op2;
	private String opcode;
	public int getOp1() {
		return op1;
	}
	public void setOp1(int op1) {
		this.op1 = op1;
	}
	public int getOp2() {
		return op2;
	}
	public void setOp2(int op2) {
		this.op2 = op2;
	}
	public String getOpcode() {
		return opcode;
	}
	public void setOpcode(String opcode) {
		this.opcode = opcode;
	}
	
	public String process() {
		String str = "";
		
		switch(opcode) {
		case "+":
			str = op1 + "와" + op2 + "의 계산 결과는 " + op1 + "+" + op2 + "의 계산 결과는 " + (op1 + op2);
			break;
		case "-":
			str = op1 + "와" + op2 + "의 계산 결과는 " + op1 + "-" + op2 + "의 계산 결과는 " + (op1 - op2);
			break;
		case "*":
			str = op1 + "와" + op2 + "의 계산 결과는 " + op1 + "*" + op2 + "의 계산 결과는 " + (op1 * op2);
			break;
		case "/":
			str = op1 + "와" + op2 + "의 계산 결과는 " + op1 + "/" + op2 + "의 계산 결과는 " + (op1 / op2);
			break;
		}
		return str;
	}
}
