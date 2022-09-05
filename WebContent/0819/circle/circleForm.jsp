<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="circle" class="area.Circle"></jsp:useBean>
<jsp:setProperty property="r" name="circle" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>입력한 정보입니다.</h3>
<%
	out.println("반지름이 " + circle.getR() + "인 원의 면적은 "
						+ circle.process(circle.getR()));
%>
</body>
</html>