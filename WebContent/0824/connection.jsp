<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
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
	Connection conn = null;

	try {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");	//jdbc 드라이버 로딩
		conn = DriverManager.getConnection(url, user, password);	//oracle db연결
		out.print("db 연결이 성공했습니다. <br>");
	}catch(SQLException ex) {
		ex.getMessage();	//에러메시지 출력
	}finally {
		if(conn != null) conn.close();
	}
%>

</body>
</html>