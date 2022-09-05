<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="w2d" class="question.Won2dollar"></jsp:useBean>
<jsp:setProperty property="won" name="w2d"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>당신이 입력한 정보입니다</h3>
<%
	out.println("입력된 원화가 " + w2d.getWon() + "원은 $"
							+ w2d.process(w2d.getWon()));
%>
</body>
</html>