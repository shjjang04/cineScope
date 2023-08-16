<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp"%>
<title>계정 설정</title>
</head>
<%@include file="include/nav.jsp"%>
<!-- Sidebar -->
<%@include file="include/sidebar.jsp"%>
<div id="wrapper">
	<!-- Sidebar -->
	<%@include file="include/sidebar.jsp"%>

	<body id="page-top">
		<div id="wrapper">
			<div id="content-wrapper">
				<div class="container-fluid upload-details">
					<div class="row no-gutters">
						<div class="col-lg-12">
							<div class="main-title">
								<h5><strong>ㅤ계정 설정</strong></h5>
                        <p>사용자 계정 정보를 수정합니다.</p>
                        <hr>
								<div class=col-md-5 p-5 bg-white full-height>
									<form action="update" method="post">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">변경 할 비밀번호 <span
														class="required">*</span></label> <input
														class="form-control border-form-control" name="u_pw"
														placeholder="비밀번호 입력" type="text">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">변경 할 주소 <span
														class="required">*</span></label> <input
														class="form-control border-form-control" name="u_addr"
														placeholder="주소 입력" type="text">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">이메일 주소 <span
														class="required">*</span></label> <input
														class="form-control border-form-control " name="u_email"
														placeholder="이메일 입력" type="email">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12 text-right">
												<button type="button"
													onclick="location.href='${contextPath}/'"
													class="btn btn-danger border-none">취소</button>
												<button type="submit" class="btn btn-success border-none">
													변경사항 저장</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
				<!-- Sticky Footer -->
			</div>
			<!-- /.content-wrapper -->
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