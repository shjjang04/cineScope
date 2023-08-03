<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp"%>
</head>
<%@include file="include/top.jsp"%>
<div id="wrapper">
	<!-- Sidebar -->
	<%@include file="include/sidebar.jsp"%>
	<div id="content-wrapper">
		<div class="container-fluid pb-0">
			<!-- 여기서 부터 본문 작성 -->


			<var ="board" items="${board_Detail }">
				<td>제목: ${board.b_title }</td>
				<td>내용: ${board.b_context }</td>
				<td>작성일: ${board.b_date }</td>
				<br>
			</var>
			<c:forEach var="article" items="${article }">
		 		<tr>
		 			<td>댓글: ${article.a_context }</td>
		 		</tr>
			</c:forEach>
				<br>
				<button><a href="board_Modify?b_number=${board.b_number}">글수정</a></button>
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
