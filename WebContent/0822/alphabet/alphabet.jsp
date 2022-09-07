<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="alphabet" class="question.Alphabet"></jsp:useBean>
<jsp:setProperty property="c" name="alphabet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("입력된 알파벳이 " + alphabet.getC() +"은 "
									+ alphabet.process());
	%>
</body>
</html>