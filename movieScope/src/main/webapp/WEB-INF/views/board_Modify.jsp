<%@page import="org.apache.ibatis.type.BigIntegerTypeHandler"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp"%>
</head>
<body>
<%@include file="include/top.jsp"%>
<div id="wrapper">
	<!-- Sidebar -->
	<%@include file="include/sidebar.jsp"%>
	<div id="content-wrapper">
		<div class="container-fluid pb-0">
			<!-- 여기서 부터 본문 작성 -->
				<form role="form" method="post">
				<div class="form-group">
				<label>제목</label> <input type="text" name='b_title' class="form-control"  value="${board.b_title}"/>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" name="b_context" rows="3">${board.b_context}</textarea>
				</div>
					<!-- <a href='board__Modify?b_number=${board.b_number},b_title=${board.b_title},b_context=${board.b_context}'>수정</a>  -->
					<button type="submit" class="btn btn-primary">수정완료</button>
					<a href='board__remove?b_number=${board.b_number}'>제거</a>
				</form>
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
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<%@include file="include/js.jsp"%>
	</body>

	</html>