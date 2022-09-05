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
<center><h3>[ 설정된 세션 값을 삭제하는 예제 - 2 ]</h3></center>
	<hr>
	invalidate() 메소드를 사용하여 세션값을 삭제하는 예제입니다.
	<%
		String s2_name = "";
		String s2_value = "세션에 저장된 첫 번째 값입니다.";
		session.setAttribute("s2_name1", s2_value);
		
		s2_value = "세션에 저장된 두 번째 값입니다.";
		session.setAttribute("s2_name2", s2_value);
		
		s2_value = "세션에 저장된 세 번째 값입니다.";
		session.setAttribute("s2_name3", s2_value);
		
		out.println("<hr><h3>----- 세션값을 삭제하기 전 -----</h3>");
		Enumeration enum_app = session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			s2_name = enum_app.nextElement().toString();
			s2_value = session.getAttribute(s2_name).toString();
			out.println("<hr>얻어온 세션 이름[ "+i+" ] : "+s2_name);
			out.println("<br>얻어온 세션 값[ "+i+" ] : "+s2_value);
		}
	
		session.invalidate();	//세션 전부 삭제
		
		out.println("<hr><h3>----- 세션값을 삭제한 후 -----</h3>");
		
		if(request.isRequestedSessionIdValid()) {	//유효 세션이 있는지 확인
			out.println("세션 아이디가 유효합니다");
		}else{
			out.println("세션 아이디가 유효하지 않습니다");
		}
	%>
	
</body>
</html>