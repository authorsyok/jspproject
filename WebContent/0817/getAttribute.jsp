<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>[ 세션 값을 얻어오는 예제]</center>
	<hr>
		얻어온 세션값은 다음과 같습니다.
	<hr>
	<%
		Object obj_getdata = session.getAttribute("Testing");
		String s_getdata = (String)obj_getdata;	//형변환 다운캐스팅
		
		int i_getdata = (Integer)session.getAttribute("Mydata");
		
		out.println("설정된 세션값 [1] =>"+s_getdata+"<br><br>");
		out.println("설정된 세션값 [2] =>"+i_getdata+"<hr>");
	%>
</body>
</html>