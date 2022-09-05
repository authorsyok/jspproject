<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="tsn" class="question.ThreeSixNine"></jsp:useBean>
<jsp:setProperty property="num" name="tsn"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("입력된 정수가 " + tsn.getNum() + "은 " + tsn.process());
%>
</body>
</html>