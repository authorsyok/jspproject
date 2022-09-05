<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="median" class="question.Median"></jsp:useBean>
<jsp:setProperty property="*" name="median"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("입력된 정수가 " + median.getX() + "와 "
							+ median.getY() + "와 "
							+ median.getZ() + "의  중간값은 "
							+ median.process());
%>
</body>
</html>