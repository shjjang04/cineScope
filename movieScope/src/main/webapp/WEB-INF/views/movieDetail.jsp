<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>

<head>
<%@include file="include/head.jsp"%>
<script>
		function favCheck() {
			var fav =  document.getElementById("fav");
         	   if(${fav} > 0){
					fav.classList.add("btn-success");
					fav.classList.remove("btn-secondary");
         	   }else{
         		fav.classList.add("btn-secondary");
         		fav.classList.remove("btn-success");
         	   }
		}   		
   	</script>
</head>
<body id="page-top" onload="favCheck();">
	<%@include file="include/nav.jsp"%>
	<%@include file="include/sidebar.jsp"%>
	<div id="wrapper">
		<!-- Sidebar -->
		<div id="content-wrapper">
			<div class="container-fluid pb-0">
				<div class="main-title">
					<h5>
						<strong>ㅤ영화 상세정보</strong>
					</h5>
					<p>선택한 영화의 상세 정보입니다.</p>
					<hr>

				</div>
				<div class="video-block section-padding">
					<div class="row no-gutters">
						<div class="col-md-13 bg-primiery">
							<div class="login-main-left">
								<img class="img-fluid"
									src="/dong/resources/img/images/${movie[0]}.jpg" alt="">
							</div>
							<div class="single-video-title box mb-3">
								<button class="btn btn-secondary border-none" id="fav"
									type="button">
									<i class="fas fa-heart"></i>
								</button>
								<h2>
									<strong><a href="#">${movie[0]}</a></strong>
								</h2>
								<p class="mb-0">
									<i class="fas fa-eye"></i> ${movie[6]}
								</p>
								<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
								<script>
                               var fav =  document.getElementById("fav");
                               fav.onclick = function() {
                            	   if(fav.classList.contains('btn-secondary')){
                            		location.href="movieDetail/add?FK_m_number=${m_number}"
                            	   }else{
                            		location.href="movieDetail/cancel?FK_m_number=${m_number}"
                            	   }
                            	   
								};
                              </script>
							</div>

						</div>
						<div class="col-md-13 bg-primiery">
							<div class="single-video-info-content box mb-3">
								<h6>국가 :</h6>
								<p>${movie[10]}
								<h6>감독/주연 :</h6>
								<p>${movie[3]}/${movie[4]}</p>
								<h6>장르 :</h6>
								<p>${movie[9]}</p>
								<h6>개봉일 :</h6>
								<p>${movie[1]}</p>
								<h6>평점 :</h6>
								<p>${movie[5]}</p>
								<h6>런타임 :</h6>
								<p>${movie[7]}
									<c:if test="${movie[8] ne 'null' }">
										<h6>수상 :</h6>
										<p>${movie[8]}<br>
									</c:if>
							</div>
						</div>
						<div class="col-md-4">
							<h6>
								<strong>관련 영화</strong>
							</h6>
							<p>이 영화를 찜한 다른 유저가 찜한 영화들입니다.</p>
							
							<div class="single-video-right">
								<c:if test="${list ne 'null'}">
									<c:forEach var="list" items="${list}">
										<tr>
											<strong><td>${list}</strong><br>
										</tr>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /.content-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<%@include file="include/logoutModal.jsp"%>
	<!-- JavaScript -->
	<%@include file="include/js.jsp"%>
</body>

</html>