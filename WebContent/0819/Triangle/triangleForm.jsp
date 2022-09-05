<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="triangle" class="question.Triangle"></jsp:useBean>
<jsp:setProperty property="*" name="triangle" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("입력된 3번의 값이 " + triangle.process());
%>
</body>
</html>