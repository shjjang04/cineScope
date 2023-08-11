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
						<img class="channel-profile-img" alt="" src="${contextPath }/resources/img/s2.png">

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
								<li class="nav-item"><a class="nav-link" href="profile">내가 찜한 영화
								</a></li>
								<li class="nav-item active"><a class="nav-link" href="#">내 게시글
								<span class="sr-only">(current)</span></a>
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
									<h5><strong>ㅤ내 게시글</strong></h5>
									<p>${u_id }님이 작성한 글들을 확인해보세요</p>
									
								</div>
									<!-- 게시판모형 -->
					        	
					        	<table class="table table-hover">
					        		<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">영화</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">작성일</th>
										<th scope="col">조회수</th>
									</tr>
										<c:forEach var="board" items="${boardListAll }">
											<tr>
												<td>${board.b_number }</td>
												<td><a href="board_Detail?b_number=${board.b_number}&user=${user}">${board.b_title}</a></td>
												<td>${board.b_date }</td>
												<td>${board.u_id }</td>
												<td>${board.b_date }</td>
												<td>${board.b_cnt }</td>
											</tr>
										</c:forEach>
								</table>
								<button><a href="boardWrite?&user=${user}">글작성</a></button>
								<script type="text/javascript">
									$(document).ready(function(){
																
										var actionForm = $("#actionForm");
										
										$(".paginate_button a").on("click", function(e){
											
											e.preventDefault();
											
											console.log('click');
											
											actionForm.find("input[name='pageNum']").val($(this).attr("href"));
											actionForm.submit();
										});
									});
									?pageNum='+${pageMaker.cri.pageNum }+'&amount='+ ${pageMaker.cri.amount }
								</script>
								
								<form id="actionForm" action="boardListAll" method='get'>
									<input type='hidden' name='pageNum' value = "${pageMaker.cri.pageNum }">
									<input type='hidden' name='amount' value = "${pageMaker.cri.amount }">
								</form>
								
								<div aria-label="Page navigation example" style="display: block; text-align: center;">
									<ul class="pagination justify-content-center pagination-sm mb-0"">
										<c:if test='${pageMaker.prev }'>
											<li class="paginate_button previous page-item"><a class="page-link" href="${contextPath }/boardListAll?pageNum=${pageMaker.startPage - 1 }"> Previous </a>
											</li>
										</c:if>
									
										<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
											<li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? "active":"" } "><a class="page-link" href="${contextPath }/boardListAll?pageNum=${num}&amount=${pageMaker.cri.amount }">${num }</a></li>
										</c:forEach>
									
										<c:if test="${pageMaker.next }">
											<li class="paginate_button next page-item"><a class="page-link" href="${contextPath }/boardListAll?pageNum=${pageMaker.endPage + 1 }">Next</a></li>
										</c:if>
									</ul>
								</div>
					            <!-- end Pagination --> 
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
	<%@include file="include/js.jsp"%>
</body>

</html>
