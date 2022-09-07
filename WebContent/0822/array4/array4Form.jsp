<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="array4" class="question.Array4"></jsp:useBean>
<jsp:setProperty property="num" name="array4"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("입력된 정수의 갯수는 " + array4.getNum() + "는 <br>"
								+ array4.process());
	%>
</body>
</html>