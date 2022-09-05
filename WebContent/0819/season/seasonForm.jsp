<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="season" class="question.Season"></jsp:useBean>
<jsp:setProperty property = "month" name="season" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>당신이 입력한 정보입니다.</h3>
<%
	out.println("입력된 정수가 " + season.getMonth() + "은 계절이 " + season.process(season.getMonth()));
%>
</body>
</html>