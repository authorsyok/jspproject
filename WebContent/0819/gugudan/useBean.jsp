<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gugudan" class="question.GuGuDan"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>구구단 출력하기</h3>
<%
	int n = 5;
	for(int i = 1; i <= 9; i++) {
		out.println(gugudan.process(n) + " * " + i + " = " + gugudan.process(n) * i + "<br>");
	}
%>
</body>
</html>