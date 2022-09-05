<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="three" class="question.Three"></jsp:useBean>
<jsp:setProperty property="num" name="three"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>입력한 정보입니다.</h3>
<%
	out.println("입력된 수가 " + three.getNum() + "은 "
							+ three.process(three.getNum()));
%>
</body>
</html>