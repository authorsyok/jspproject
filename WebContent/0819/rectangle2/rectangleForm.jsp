<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="rectangle2" class="area.rectangle2"></jsp:useBean>
<jsp:setProperty property="i" name="rectangle2" param="width1"/>
<jsp:setProperty property="j" name="rectangle2" param="width2"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>당신이 입력한 정보입니다.</h3>
<%
	out.println("가로길이가 " + rectangle2.getI() + "이고, 세로길이가 "
							+ rectangle2.getJ() + "인 사각형의 면적은 "
							+ rectangle2.process(rectangle2.getI(), rectangle2.getJ()));
	
%>
</body>
</html>