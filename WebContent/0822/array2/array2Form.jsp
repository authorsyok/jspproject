<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="array" class="question.Array2"/>
<jsp:setProperty property="*" name="array"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int intArray[]= new int[5];
		intArray[0]=array.getNum1();
		intArray[1]=array.getNum2();
		intArray[2]=array.getNum3();
		intArray[3]=array.getNum4();
		intArray[4]=array.getNum5();
		
		out.println("입력된 정수 "+array.getNum1()+", "+
				  array.getNum2()+", "+
				  array.getNum3()+", "+
				  array.getNum4()+", "+
				  array.getNum5()+"중에서 3의 배수는 "+
				  array.process(intArray));
	%>
</body>
</html>