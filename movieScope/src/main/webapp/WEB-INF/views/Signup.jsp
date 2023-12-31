<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<head>
<%@include file="include/head.jsp"%>
<title>회원가입</title>
</head>

<body class="login-main-body">
	<section class="login-main-wrapper">
		<div class="container-fluid pl-0 pr-0">
			<div class="row no-gutters">
				<div class="col-md-5 p-5 bg-white full-height">
					<div class="login-main-left">
						<div class="text-center mb-5 login-main-left-header pt-4">
							<img src="resources/img/favicon.png" class="img-fluid" alt="LOGO">
							<h5 class="mt-3 mb-3">Welcome to CineScope</h5>
							<p>welcome to CineScope</p>
						</div>
						<form action="Signup" method="post">
							<div class="form-group">
								<label>ID를 입력하세요</label> 
								<input type="text" name="u_id" id="u_id" class="form-control" placeholder="Please enter your ID(6~14자)" minlength="6" maxlength = "14" onkeyup="Checkid()">
								<!-- id ajax 중복체크 -->
								<span class="id_ok">ㅤ사용가능한 아이디 입니다.</span>
								 <span class="id_already">ㅤ사용 불가능한 아이디 입니다.</span>
							</div>
							<script type="text/javascript">
						
								function Checkid() {
									var id = $('#u_id').val();
									console.log(id);
									var paramData = {"u_id" : id};
									$.ajax({
										url : "./Checkid",
										type : "post",
										data : paramData,
										dataType : 'json',
										success : function(result) {
											if (result == 0) {// result가 0일 경우 아이디 생성 가능
												$('.id_ok').css("display", "inline");
												$('.id_already').css("display", "none");
											}else { // result가 1일 경우 -> 이미 존재하는 아이디
												$('.id_already').css("display",	"inline-block");
												$('.id_ok').css("display", "none");
												
											}
										},
										error : function() {
											alert("에러입니다");
										}
									});
								};
							</script>
							<div class="form-group">
								<label>비밀번호를 입력하세요</label>
								 <input type="password" name="u_pw"	id="u_pw" class="form-control" placeholder="please enter your Password(6~14자)" minlength="6" maxlength = "14" onkeyup = "Checkpw()">
								<br>
								<label>비밀번호를 다시 입력하세요</label>
								 <input type="password" name="pwCheck" id="pwCheck" class="form-control" placeholder="please enter your re-Password(6~14자)" onkeyup = "Checkpw()">
								<span id = "pwConfirm"></span>
							</div>
							<script type="text/javascript">
							  function Checkpw() {
							    if ($('#u_pw') != "" || $('#pwCheck') != "") {
							      if ($("#u_pw").val() != $("#pwCheck").val()) { 
							        $('#pwConfirm').text('비밀번호 불일치').css('color', 'red')
							      } else if ($('#u_pw').val() == "" || $('#pwCheck').val() == ""){ 
							        $('#pwConfirm').text('비밀번호를 입력하지 않았습니다').css('color', 'red')
							      } else {
							        $('#pwConfirm').text('비밀번호 일치').css('color', 'green')
							      }
							    }
							  };
							  
							</script>
							<div class="form-group">
								<label>주소를 입력하세요</label> <input type="text" name="u_addr"
									class="form-control" placeholder="Please enter your address">
							</div>
							<div class="form-group">
								<label>성별을 입력하세요</label> <input type="radio" name="u_gender"
									value="M">남 <input type="radio" name="u_gender"
									value="f">여 <br>
							</div>
							<div class="form-group">
								<label>이메일을 입력하세요</label> <input type="email" name="u_email"
									class="form-control" placeholder="Please enter your e-mail">
							</div>
						
							<div class="form-group">
								<label>생년 월일을 입력하세요</label> <input type="date" name="u_birthday"
									id = "birthday" class="form-control" placeholder="Please enter your birthday(ex:1991-01-01)">
									<div class = "eheck_font" id = "birth_check"></div>
							</div>
							<div class="mt-4">
								<button type="submit"
									class="btn btn-outline-primary btn-block btn-lg">Sign Up</button>
							</div>
						</form>
						<div class="text-center mt-5">
							<p name="user_signup" class="light-gray">
								Already have an Account? <a href="login.html">Sign In</a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-7">
					<div class="login-main-right bg-white p-5 mt-5 mb-5">
						<div class="owl-carousel owl-carousel-login">
							<div class="item">
								<div class="carousel-login-card text-center">
									<img src="resources/img/login.png" class="img-fluid" alt="LOGO">
									<h5 class="mt-5 mb-3">​Watch videos offline</h5>
									<p class="mb-4">
										when an unknown printer took a galley of type and scrambled<br>
										it to make a type specimen book. It has survived not <br>only
										five centuries
									</p>
								</div>
							</div>
							<div class="item">
								<div class="carousel-login-card text-center">
									<img src="resources/img/login.png" class="img-fluid" alt="LOGO">
									<h5 class="mt-5 mb-3">Download videos effortlessly</h5>
									<p class="mb-4">
										when an unknown printer took a galley of type and scrambled<br>
										it to make a type specimen book. It has survived not <br>only
										five centuries
									</p>
								</div>
							</div>
							<div class="item">
								<div class="carousel-login-card text-center">
									<img src="resources/img/login.png" class="img-fluid" alt="LOGO">
									<h5 class="mt-5 mb-3">Create GIFs</h5>
									<p class="mb-4">
										when an unknown printer took a galley of type and scrambled<br>
										it to make a type specimen book. It has survived not <br>only
										five centuries
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Owl Carousel -->
	<script src="resources/vendor/owl-carousel/owl.carousel.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="resources/js/custom.js"></script>
</body>
</html>