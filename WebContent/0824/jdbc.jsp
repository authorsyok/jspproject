<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
		
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String query = "SELECT * FROM MEMBER2";
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>등급</td>
			<td>직위</td>
			<td>전화번호</td>
		</tr>
		
		<%
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");	//jdbc 드라이버 로딩
				conn = DriverManager.getConnection(url, user, password);	//oracle db연결
				stmt = conn.createStatement();
				rs = stmt.executeQuery(query);
				
				while(rs.next()) {	//데이터가 없을때 반복
		%>
				<tr>
					<td><%= rs.getString("id") %></td>
					<td><%= rs.getString("name") %></td>
					<td><%= rs.getString("class") %></td>
					<td>
						<%
							int n_class = rs.getInt("class");	// 등급 1,2를 문구로 나누기
							if(n_class == 1) {
								out.println("일반회원");
							}else {
								out.println("교수님");
							}
						%>
					</td>
					<td><%= rs.getString("tel") %></td>
				</tr>
		<%
				}
			}catch(SQLException ex) {
				ex.getMessage();	//에러메시지 출력
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
	</table>
</body>
</html>