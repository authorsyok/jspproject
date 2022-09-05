<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="evenNumber" class="question.EvenNumber"></jsp:useBean>
<jsp:setProperty property="num" name="evenNumber"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("입력된 정수가 " + evenNumber.getNum() 
							+ "의 짝수들의 합계는 "
							+ evenNumber.process());
%>
</body>
</html>