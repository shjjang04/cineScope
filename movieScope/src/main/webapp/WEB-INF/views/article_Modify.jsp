<%@page import="kr.co.dong.DTO.ArticleDTO"%>
<%@page import="kr.co.dong.DTO.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp"%>
<title>시네스코프 코리아 - 취향을 저격하는 영화 DB 검색서비스 </title>
</head>
<body id="page-top">
<%@include file="include/nav.jsp"%>
<div id="wrapper">
	<!-- Sidebar -->
	<%@include file="include/sidebar.jsp"%>
	<div id="content-wrapper">
		<div class="container-fluid pb-0">
			<!-- 여기서 부터 본문 작성 -->
			
			<form action="article_Modify" method="POST">
			  내용: <input type="text" name="a_context"><br>
			  <input type="hidden" name="FK_b_number" value="${dto.FK_b_number}"/>
			  <input type="hidden" name="FK_u_number" value="${dto.FK_u_number}"/>
			  <input type="hidden" name="a_number" value="${dto.a_number}"/>
			  <input type="hidden" name="a_date" value="${dto.a_date}">
			  <input type="submit" value="댓글 수정">
			</form>
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
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<a class="btn btn-primary" href="login.html">Logout</a>
			</div>
		</div>
	</div>
</div>
<!-- Bootstrap core JavaScript-->
<%@include file="include/js.jsp"%>
</body>

</html>
