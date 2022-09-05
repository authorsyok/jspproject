<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("userID") == null) {
		response.sendRedirect("session_out.jsp");
	}//세션이 없는데 로그인했던 주소값만 복사해서 들어올 경우, 로그인 페이지로 보내버림
%>
<%= session.getAttribute("userID") %>님 반갑습니다!
<p><a href="session_out.jsp">로그아웃</a></p>
</body>
</html>