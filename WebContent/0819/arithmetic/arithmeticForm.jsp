<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="arithmetic" class="question.Arithmetic"></jsp:useBean>
<jsp:setProperty property="*" name="arithmetic"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println(arithmetic.process());
%>
</body>
</html>