<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[ 세션 값을 얻어오는 예제 -2 ]</h3></center>
	<hr>
		getAttributeNames() 메소드를 사용하여 세션값을 얻어오는 예제
	<hr>
	<%
		String s_validate = "현재 페이지와 페이지에 설정된 세션 값들도 나타남";
		session.setAttribute("Validate", s_validate);
		
		String s_name = "";	//초기값
		String s_value = "";
		
		Enumeration enum_app = session.getAttributeNames(); //열거형으로 설정
		int i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			s_name = enum_app.nextElement().toString();	//캐스팅
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>얻어온 세션 이름 ["+i+"] : "+s_name+"<br>");
			out.println("<br>얻어온 세션 값 ["+i+"] : "+s_value+"<hr>");
		}
	
	%>
</body>
</html>