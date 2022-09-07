<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cap" class="question.Capital"></jsp:useBean>
<jsp:setProperty property="c" name="cap"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("입력된 알파벳이 " + cap.getC() + "는 <br>"
								+ cap.process());
	%>
</body>
</html>