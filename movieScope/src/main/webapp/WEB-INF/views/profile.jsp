<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<%@ page session="true"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp"%>
</head>
<body id="page-top">
	<%@include file="include/nav.jsp"%>
	<!-- Sidebar -->
	<%@include file="include/sidebar.jsp"%>
	<div id="wrapper">
		<div id="content-wrapper">
			<div class="single-channel-page" id="content-wrapper">
				<div class="single-channel-image">
					<img class="img-fluid" alt=""
						src="resources/img/channel-banner.png">
					<div class="channel-profile">
						<img class="channel-profile-img" alt="" src="resources/img/s2.png">

					</div>
				</div>
				
				<div class="single-channel-nav">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="channel-brand">${u_id } 님 의 채널입니다<span title=""
							data-placement="top" data-toggle="tooltip"></span></a>
						
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item active"><a class="nav-link" href="#">내가 찜한 영화
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="profile_board">내 영화 평점 </a>
								</li>
							</ul>
							
							<form class="form-inline my-2 my-lg-0">
								<input class="form-control form-control-sm mr-sm-1"
									type="search" placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success btn-sm my-2 my-sm-0"
									type="submit">
									<i class="fas fa-search"></i>
								</button>
								&nbsp;&nbsp;&nbsp;
							</form>
						</div>
					</nav>
				</div>
				<div class="container-fluid">
					<div class="video-block section-padding">
						<div class="row">
							<div class="col-md-12">
								<div class="main-title">
									<h5><strong>ㅤ내가 찜한 영화 </strong></h5>
									<p>${u_id }님이 찜한 영화 목록이 표시됩니다</p>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="category-item mt-0 mb-0">
									<a href="#"><img class="img-fluid"
										src="resources/img/v1.png" alt=""></a>
									<div class="video-card-body">
										<div class="video-title">
		                                    <h6><a href="#"><strong>바람난 파이터</strong></h6></a>
											
										</div>
										<!-- 영화 제목 -->                                 
		                                 <!-- 주연 -->
		                                    <p><strong>주연:</strong>양조간장,쯔란위</p>
		                                 <!-- 감독  -->
		                                    <p><strong>감독:</strong>오우얌</p>
		                                    
		                                    
										<!-- 따로 데이터 추가해야할때  <div class="video-view">
											1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11
											Months ago
										</div> -->
									</div>
								</div>
							</div>
								
						
						
						
							
						</div>
					
					</div>
				</div>
				<!-- /.container-fluid -->

			</div>

		</div>
	</div>
	</div>
	<!-- /.container-fluid -->
	</div>
	<hr>

	<!-- /.content-wrapper -->
	</div>

	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
      <%@include file="include/logoutModal.jsp" %>
      <!-- JavaScript -->
      <%@include file="include/js.jsp" %>
</body>

</html>
