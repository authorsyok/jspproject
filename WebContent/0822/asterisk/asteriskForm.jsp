<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="asterisk" class="question.Asterisk"></jsp:useBean>
<jsp:setProperty property="num" name="asterisk"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("입력된 정수가 " + asterisk.getNum()
								+"는 <br>"
								+ asterisk.process());
		
	%>
</body>
</html>