<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<% request.setCharacterEncoding("utf-8"); %>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
		
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id="", pw="", name="", sclass="", p1="", p2="", p3="";
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		sclass = request.getParameter("mclass");
		p1 = request.getParameter("phone1");
		p2 = request.getParameter("phone2");
		p3 = request.getParameter("phone3");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");	//jdbc 드라이버 로딩
			conn = DriverManager.getConnection(url, user, password);	//oracle db연결
			stmt = conn.createStatement();
			StringBuffer sb = new StringBuffer();
			
			sb.append("INSERT INTO MEMBER2 VALUES('");
			sb.append(id + "', '");
			sb.append(pw + "', '");
			sb.append(name + "', '");
			sb.append(sclass + "', '");
			sb.append(p1 + "-" + p2 + "-" + p3 + "')");
			
			System.out.println(sb);
			int re = stmt.executeUpdate(sb.toString());//리턴이 성공적으로 되면 1이 옴
			
			if(re == 1) {
	%>
				추가 성공<br>
				<a href="addForm.html">추가작업</a>
				<a href="viewMember.jsp">검색작업</a>
	<%			
			}else {
	%>
			<font color="red">추가실패</font>
	<%			
			}
		}catch(SQLException ex) {
			ex.getMessage();	//에러메시지 출력
	%>
			<font color="red">서버불량 잠시 후 다시 시도</font>
	<%
		}finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			}catch(SQLException ex) {
				ex.getMessage();	//에러메시지 출력
			}
		}
	%>
</body>
</html>