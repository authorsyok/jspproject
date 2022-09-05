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
		String userID = "admin";
		String userPW = "1234";
		
		if(userID.equals(request.getParameter("id")) &&
				userPW.equals(request.getParameter("pw"))) {
			session.setAttribute("userID", userID);
			response.sendRedirect("welcome.jsp");
		}else{
			out.println("로그인에 실패했습니다.");
		}
	%>
</body>
</html>