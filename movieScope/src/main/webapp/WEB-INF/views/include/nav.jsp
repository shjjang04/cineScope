<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand navbar-light bg-white static-top osahan-nav sticky-top">
	&nbsp;&nbsp;
	<button class="btn btn-link btn-sm text-secondary order-1 order-sm-0"
		id="sidebarToggle">
		<i class="fas fa-bars"></i>
	</button>
	&nbsp;&nbsp; <a class="navbar-brand mr-1" href="${pageContext.request.contextPath}/"><img
		class="img-fluid" alt="" src="resources/img/logo.png"></a>
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
			<button type="button" onclick="location.href='login'" class="btn btn-primary border-none">Login</button>
		</div>
		<li class="nav-item dropdown no-arrow osahan-right-navbar-user">
			<a class="nav-link dropdown-toggle user-dropdown-link" href="#"
			id="userDropdown" role="button" data-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false"> <img alt="Avatar"
				src="resources/img/user.png"> Osahan
		</a>
			<div class="dropdown-menu dropdown-menu-right"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="account"><i
					class="fas fa-fw fa-user-circle"></i> &nbsp; My Account</a> <a
					class="dropdown-item" href="subscriptions"><i
					class="fas fa-fw fa-video"></i> &nbsp; Subscriptions</a> <a
					class="dropdown-item" href="settings"><i
					class="fas fa-fw fa-cog"></i> &nbsp; Settings</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="" data-toggle="modal"
					data-target="#logoutModal"><i class="fas fa-fw fa-sign-out-alt"></i>
					&nbsp; Logout</a>
			</div>
		</li>
	</ul>
</nav>
