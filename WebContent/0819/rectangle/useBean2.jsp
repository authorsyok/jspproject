<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="rect" class="area.Rectangle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>사각형의 면적 출력하기</h4>
<%
	int num1 = 20;
	int num2 = 30;
	out.println("가로 " + num1 + ",세로 " + num2 + "인 사각형의 면적은 " + rect.process(num1, num2));
%>
</body>
</html>