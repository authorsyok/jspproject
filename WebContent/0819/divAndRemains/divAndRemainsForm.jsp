<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dar" class="question.divAndRemains"></jsp:useBean>
<jsp:setProperty property="num" name="dar"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("입력된 정수가 " + dar.getNum() + "은 "
							+ dar.process(dar.getNum()));
%>
</body>
</html>