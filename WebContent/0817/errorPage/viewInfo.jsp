<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String s_name;
	int age;
%>
<%
	//한글처리
	request.setCharacterEncoding("utf-8");
	s_name = request.getParameter("name");
	age = Integer.parseInt(request.getParameter("age"));
%>
	<h3>회원 정보 출력</h3> <hr>
	당신의 이름은 <%= s_name %>입니다.<br>
	당신의 나이는 <%= age %>입니다.
</body>
</html>