<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%! 
	Connection conn=null; //2단계
	Statement stmt=null; //3단계 
	ResultSet rs=null; //4단계

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String selectQuery = "SELECT * FROM MEMBER2";//쿼리를 문자열로 받음
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
			<td>전화번호</td>
		</tr>
	
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");//jdbc드라이버 로딩
		conn = DriverManager.getConnection(url, user, password);//오라클 데이터베이스 연결
		stmt = conn.createStatement();//3단계
		rs = stmt.executeQuery(selectQuery);//rs값에 쿼리 결과값이 들어감
		
		while(rs.next()){//데이터 없을때 반복
			%>
			<tr>
				<td><%= rs.getString("id") %></td>
				<td><%= rs.getString("name") %></td>
		   <%-- <td><%= rs.getInt("class") %></td> --%>
				<td>
					<%
						int n_class=rs.getInt("class");
						if(n_class==1){
							out.println("일반회원");
						} else {
							out.println("교수님");
						}
					%>
				</td>
				<td><%= rs.getString("tel") %></td>
			</tr>
	<%
		}
	}catch(SQLException ex){
		ex.getMessage();//에러메세지 출력
	}finally{
		try{
		if(rs != null) rs.close();
		if(stmt != null) stmt.cancel();
		if(conn != null) conn.close();
		}catch(SQLException ex){
			ex.getMessage();//에러메세지 출력	
		}
	}
	%>
	</table>
</body>
</html>