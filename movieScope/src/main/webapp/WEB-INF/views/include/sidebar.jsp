<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="collapse show sidebar navbar-nav" id="navbarToggleExternalContent">

	<li class="nav-item active"><a class="nav-link" href="${contextPath}/">
			<i class="fas fa-fw fa-home"></i> <span>Home</span>
	</a></li>
	
	<li class="nav-item"><a class="nav-link" href="${contextPath}/profile">
			<i class="fas fa-fw fa-user"></i> <span>My Channel</span>
	</a></li>
	
	<li class="nav-item"><a class="nav-link" href="${contextPath}/search">
			<i class="fas fa-fw fa-search"></i> <span>Search</span>
	</a></li>
	
	<li class="nav-item"><a class="nav-link" href="${contextPath}/boardListAll">
			<i class="fas fa-fw fa-star"></i> <span>Rating board</span>
	</a></li>
	
	<li class="nav-item channel-sidebar-list">
		<h6>My menu</h6>
				
	</li>
	<li class="nav-item">
	<footer class="sticky-footer-side">
		<div class="nav-item">
		<a href="#"><img alt="푸터로고" src="${contextPath }/resources/img/flogo.png"></a>
		<p><strong class="text">Lim Sang-hyeon / Lee Keun-seop /
				Yun Gap-min / Jeon Jae-hong / Noh Gyeong-wook</strong>
		
			<small class="mt-0 mb-0"><a class="text-secondary">
			©2023 Cinescope : /*Let me go home*/ group³. All rights reserved.</a> </small>
		</p>
		</div>
		<div class="col-lg-6 col-sm-6 text-right">
			<div class="app"></div>
		</div>
	</li>
	</footer>
</ul>