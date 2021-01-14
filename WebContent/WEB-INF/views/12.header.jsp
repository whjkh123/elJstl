<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>c:choose</h1>

	<h2>java</h2>

	<div id="header">
		<h1>MySite</h1>
		<ul>
			<%
				if (authUser == null) {
			%>
			<!-- 로그인 전 -->
			<li><a href="/mysite/user?a=loginform">로그인</a></li>
			<li><a href="/mysite/user?a=joinform">회원가입</a></li>
			<%
				} else {
			%>
			<!-- 로그인 후 -->
			<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
			<li><a href="/mysite/user?a=logout">로그아웃</a></li>
			<li><%=authUser.getName()%>님 안녕하세요^^;</li>
			<%
				}
			%>
		</ul>
	</div>
	<!-- /header -->

	<br>

	<h2>jstl</h2>

	<div id="header">
		<h1>MySite</h1>
		<ul>
			<c:choose>
				<c:when test="${empty sessionScope.authUser}">
					<%-- <c:when test="${sessionScope.authUser == null}"> --%>
					<%-- <c:when test="${empty authUser}"> --%>
					<%-- <c:when test="${authUser == null}"> --%>
					<!-- 로그인 전 -->
					<li><a href="/mysite/user?a=loginform">로그인</a></li>
					<li><a href="/mysite/user?a=joinform">회원가입</a></li>
				</c:when>

				<c:otherwise>
					<!-- 로그인 후 -->
					<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
					<li><a href="/mysite/user?a=logout">로그아웃</a></li>
					<li>${sessionScope.authUser.name} 님안녕하세요^^;</li>
					<%-- <li>${authUser.name} 님안녕하세요^^;</li> --%>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<!-- /header -->

</body>
</html>