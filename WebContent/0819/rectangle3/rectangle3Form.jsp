<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="rect" class="question.Rectangle3"></jsp:useBean>
<jsp:setProperty property="*" name="rect" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("(" + rect.getX() + "," + rect.getY() + ")는 " 
					+ rect.process(rect.getX(), rect.getY()));
%>
</body>
</html>