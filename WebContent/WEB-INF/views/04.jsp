<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체 접근</h1>

	<h2>java</h2>
	<%
		UserVo uVo = (UserVo) request.getAttribute("userVo");
		int num = (int) request.getAttribute("num");
		String str = (String) request.getAttribute("str");
	%>
	
	userVo → name = <%=uVo.getName() %> <br>
	userVo → eamil = <%=uVo.getEmail() %> <br>
	userVo → password = <%=uVo.getPassword() %> <br>
	userVo → gender = <%=uVo.getGender() %> <br>
	<br>	
	num = <%=num %> <br>
	str = <%=str %> <br>

	<h2>el</h2>
	userVo → name = ${requestScope.userVo.name} <br>
	userVo → name = ${userVo.name} <br>
	userVo → email = ${requestScope.userVo.email} <br>
	userVo → email = ${userVo.email} <br>
	userVo → password = ${requestScope.userVo.password} <br>
	userVo → password = ${userVo.password} <br>
	userVo → gender = ${requestScope.userVo.gender} <br>
	userVo → gender = ${userVo.gender} <br>
	<br>
	num = ${requestScope.num} <br>
	num = ${num} <br>
	str = ${requestScope.str} <br>
	str = ${str} <br>
	
</body>
</html>