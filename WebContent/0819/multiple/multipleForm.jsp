<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="multiple" class="question.Multiple"></jsp:useBean>
<jsp:setProperty property="num" name="multiple"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("입력된 정수가 " + multiple.getNum() 
							+"는 " + multiple.process());
%>
</body>
</html>