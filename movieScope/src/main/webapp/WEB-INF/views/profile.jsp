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
								<li class="nav-item"><a class="nav-link" href="profile_board">내 게시글 </a>
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
									<div class="btn-group float-right right-action">
										<a href="#" class="right-action-link text-gray"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"> Sort by <i
											class="fa fa-caret-down" aria-hidden="true"></i>
										</a>
										<div class="dropdown-menu dropdown-menu-right">
											<a class="dropdown-item" href="#"><i
												class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a
												class="dropdown-item" href="#"><i
												class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a
												class="dropdown-item" href="#"><i
												class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
										</div>
									</div>
									<h5><strong>ㅤ내가 찜한 영화 </strong></h5>
									<p>${u_id }님이 찜한 영화 목록이 표시됩니다</p>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<c:forEach var="recommend" items="${favList}">
		                           <div class="item">
		                              <div class="category-item">
		                                 <!-- 게시물 고유 주소 -->
		                                 	<a href="/dong/movieDetail?m_number=${recommend.m_number}">
		                                 <!-- 영화 이미지 -->
		                                    <img class="img-fluid" src="resources/img/images/${recommend.m_name}.jpg" alt="">
		                                 <!-- 영화 제목 -->                                 
		                                    <strong><h6>${recommend.m_name}</h6></strong>
		                                 <!-- 주연 -->
		                                    <p><strong>주연:</strong>${recommend.m_actor}</p>
		                                 <!-- 감독  -->
		                                    <p><strong>감독:</strong>${recommend.m_director}</p>
		                                 <!-- 더미 -->
		                                 </a>
		                              </div>
		                           </div>
                       </c:forEach>
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
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="include/js.jsp"%>
</body>

</html>
