<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center><h3>[ 세션 정보를 얻어오는 메소드를 사용한 예제 ]</h3></center>
	<hr>
	<%
		String s_id = session.getId();	//고유 아이디
		long last_time = session.getLastAccessedTime();	//마지막 엑세스 한 시간
		long creation_time = session.getCreationTime();	//생성시간
		long time_used = (last_time - creation_time) / 60000;	//머문시간 : 밀리세컨드 기준이라 분으로 나타낼려면 /60000
		int inactive = session.getMaxInactiveInterval() / 60;	//유효시간 : sec기준이라 분으로 나타낼려면/60
		boolean b_new = session.isNew();	//새로 생성된 세션인지 아닌지
	%>
	
	[1] 세션 ID는 [<%= s_id %>] 입니다.<br><hr>
	[2] 당신이 웹 사이트에 머문 시간은 [<%= time_used %>] 분입니다.<br><hr>
	[3] 세션의 유효 시간은 [<%= inactive %>] 분입니다.<br><hr>
	[4] 세션이 새로 만들어 졌나요???<br><br>
	<%
		if(b_new) {
			out.println("예. 새로운 세션을 만들었습니다.");
		}else{
			out.println("아니요. 만들지 않았습니다.");
		}
	%>
</body>
</html>