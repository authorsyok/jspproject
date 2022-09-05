<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" class="hello.HelloBean" scope="page"/>
<hr>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
*. 빈 생성 후 저장된 값 출력하기 <br><br>
이름 : <%= myBean.getName() %><br>
나이 : <%= myBean.getAge() %><br>
<hr>
*. 값을 변경한 후 출력하기 <br><br>
<%
	myBean.setName("이순신");
	myBean.setAge(251);
%>
이름 : <%= myBean.getName() %><br>
나이 : <%= myBean.getAge() %><br>
</body>
</html>