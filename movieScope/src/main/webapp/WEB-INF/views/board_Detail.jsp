<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
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
			<div class="single-channel-image">

				<img class="img-fluid" alt=""
					src="${contextPath }/resources/img/channel-banner5.png">
				<div class="channel-profile">
					<img class="channel-profile-img" alt=""
						src="${contextPath }/resources/img/s2.png">
				</div>
			</div>
			<div class="container-fluid pb-0">
			<div class="main-title">
					<h5><strong>ㅤ유저 영화 게시판</strong></h5>
					<p>Cinescope 사용자들이 직접 작성한 영화 관련 게시물을 확인해보세요</p>
					
				</div>
				<!-- 여기서 부터 작성 -->
				<div>
							<div class="k2"><strong>조회수</strong> | ${board.b_cnt }</div><br>
							<div class="k2"><strong>작성일</strong> | ${board.b_date }</div>
							<div class="k1"><strong>No. ${board.b_number }</strong></div>
							</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col"><h4><strong>${board.b_title }</strong></h4></th>
						</tr>

						<tr>
							<td><i class="fas fa-fw fa-user"></i><strong>${board.u_id }</strong></td>
						</tr>

						<tr height="1" bgcolor="#f5f5f5">
							<td colspan="4">${board.b_context }<br>
							<br>
							<br>
							<br></td>
						</tr>
				</table>



				<button class="btn btn-outline-primary">
					<a href="board_Modify?b_number=${board.b_number}">수정하기</a>
				</button>
				<button class="btn btn-outline-primary">
					<a href="article_Insert?b_number=${board.b_number}&user=${user}">댓글작성</a>
				</button>
				<button type="button" class="btn btn-outline-primary"
					onclick="history.back()">뒤로가기</button>
				<hr>

				<c:forEach var="article" items="${article }">
					<thead>
						<div>
							<div class="article">
								<i class="fas fa-fw fa-user"></i><strong>${article.FK_u_number }</strong>
							</div>
							<div>${article.a_context }
								<button class="btn btn-outline btn-sm border-none">
									<a
										href="article_Modify?a_number=${article.a_number}&user=${user}&b_number=${board.b_number}">수정</a>
								</button>
								<button class="btn btn-outline btn-sm border-none">
									<a
										href="article_Remove?a_number=${article.a_number}&user=${user}&b_number=${board.b_number}">삭제</a>
								</button>
							</div>
				</c:forEach>
			</div>
			<br>
			<hr>




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
