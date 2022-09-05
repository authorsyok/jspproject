<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>[ 세션 값을 설정하는 예제 ]</center>
	<%
		String s_test = "세션에 저장된 데이터 ";
		session.setAttribute("Testing", s_test);
		session.setAttribute("Mydata", 10);
	%>
	<hr>
		세션값을 설정하는 페이지 입니다.
	<hr>
</body>
</html>