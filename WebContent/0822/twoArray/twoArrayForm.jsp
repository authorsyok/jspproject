<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ta" class="question.TwoArray"></jsp:useBean>
<jsp:setProperty property="num" name="ta"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println(ta.getNum() + " * " + ta.getNum() + "는 <br>"
					+ ta.process());
	%>
</body>
</html>