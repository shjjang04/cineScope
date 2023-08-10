<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" %>
<nav class="navbar navbar-expand navbar-light bg-white static-top osahan-nav sticky-top">
	&nbsp;&nbsp;
	<button class="btn btn-link btn-sm text-secondary order-1 order-sm-0"
		id="sidebarToggle">
		<i class="fas fa-bars"></i>
	</button>
	&nbsp;&nbsp; <a class="navbar-brand mr-1" href="${pageContext.request.contextPath}/"><img
		class="img-fluid" alt="" src="${contextPath }/resources/img/logo.png"></a>
	<!-- Navbar Search -->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-5 my-2 my-md-0 osahan-navbar-search">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search for...">
			<div class="input-group-append">
				<button class="btn btn-light" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>
	</form>
	<!-- Navbar -->
	
		<div class= "navbar-nav ml-auto ml-md-0 osahan-right-navbar">
		
		<% 
	        String user2 = (String)session.getAttribute("user"); // 현재 세션의 user 값을 가져옵니다.
	        if(user2 != null) { // user 값이 null 이 아닐 경우 계정 드롭다운을 보여줍니다.
	    %>
	        <div class="nav-item dropdown arrow osahan-right-navbar-user">
			<a class="nav-link dropdown-toggle user-dropdown-link" href="#"
			id="userDropdown" role="button" data-toggle="dropdown"
			aria-haspopup="true" aria-expanded="true"> 
			<img alt="Avatar" src="resources/img/user.png">
				${u_id } 님 환영합니다.
		</a>
			<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
				<a class="dropdown-item" href="profile">
				<i class="fas fa-fw fa-user-circle"></i> &nbsp; 내가 찜한 영화</a>
				<a class="dropdown-item" href="settings">
				<i class="fas fa-fw fa-cog"></i> &nbsp; 계정 설정</a>
				<div class="dropdown-divider"></div>
				
				<a class="dropdown-item" href="" data-toggle="modal"
					data-target="#logoutModal">
					<i class="fas fa-fw fa-sign-out-alt"></i>
					&nbsp; 로그아웃</a>
			</div>
		</div>
	    <% } else { // user 값이 null 인 경우 아무것도 생성하지 않음 %>
	        <div class="nav-item dropdown no-arrow osahan-right-navbar-user">
	        	
					<a class="nav-link">로그인이 필요합니다</a>			
			</div>
	    <% } %>
		<% 
	        String user = (String)session.getAttribute("user"); // 현재 세션의 user 값을 가져옵니다.
	    %>
	         
	    <% if(user == null) { // user 값이 null 인 경우 로그인 버튼을 생성합니다. %>
	        <button type="button" onclick="location.href='login'" class="btn btn-primary">로그인</button>
	    <% } %>
	</div>
	
</nav>
