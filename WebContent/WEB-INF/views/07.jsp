<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page name");
request.setAttribute("name", "request name");
session.setAttribute("name", "session name");
application.setAttribute("name", "application name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>범주 우선순위</h1>
	
	<h2>java</h2>
	
	page = <%=pageContext.getAttribute("name") %> <br>
	request = <%=request.getAttribute("name") %> <br>
	session = <%=session.getAttribute("name") %> <br>
	application = <%=application.getAttribute("name") %> <br>
	
	<h2>el</h2>
	
	page = ${pageScope.name} <br>
	request = ${requestScope.name} <br>
	session = ${sessionScope.name} <br>
	application = ${applicationScope.name} <br>
	<br>
	${name}

</body>
</html>