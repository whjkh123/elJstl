<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="vo.UserVo"%>

<h1>session 값 사용</h1>

<h2>java</h2>

<%
	UserVo uVo = (UserVo) session.getAttribute("authUser");
%>

<div id="header">
	<h1>
		<a href="/mysite2/main">MySite</a>
	</h1>

	<%
		if (uVo == null) {
	%>
	<ul>
		<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
		<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
	</ul>
	<%
		} else {
	%>
	<ul>
		<li><%=uVo.getName()%> 님 안녕하세요^^</li>
		<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
		<li><a href="/mysite2/user?action=modifiyForm">회원정보수정</a></li>
	</ul>
	<%
		}
	%>
</div>
<!-- //header -->

<h2>el</h2>

<div id="header">
	<h1>
		<a href="/mysite2/main">MySite</a>
	</h1>

	<%
		if (uVo == null) {
	%>
	<ul>
		<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
		<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
	</ul>
	<%
		} else {
	%>
	<ul>
		<li>${sessionScope.authUser.name} 님 안녕하세요^^</li>
		<li>${authUser.name} 님 안녕하세요^^</li>
		<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
		<li><a href="/mysite2/user?action=modifiyForm">회원정보수정</a></li>
	</ul>
	<%
		}
	%>
</div>
<!-- //header -->
