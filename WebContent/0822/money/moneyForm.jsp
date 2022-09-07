<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="m" class="question.Money"></jsp:useBean>
<jsp:setProperty property="money" name="m"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("입력된 금액이 " + m.getMoney() + "는 <br>"
								+ m.process());
	%>
</body>
</html>