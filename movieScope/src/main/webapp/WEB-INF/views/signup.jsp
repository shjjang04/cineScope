<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
   
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Askbootstrap">
      <meta name="author" content="Askbootstrap">
      <title>Sign_up</title>
      <!-- Favicon Icon -->
      <link rel="icon" type="image/png" href="img/favicon.png">
      <!-- Bootstrap core CSS-->
      <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- Custom fonts for this template-->
      <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <!-- Custom styles for this template-->
      <link href="resources/css/osahan.css" rel="stylesheet">
      <!-- Owl Carousel -->
      <link rel="stylesheet" href="resources/vendor/owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="resources/vendor/owl-carousel/owl.theme.css">
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
         				<script type="text/javascript">
         				function fn_useridCheck() {
							$.ajax({
								url : "./user_idCheck",
								type : "post",
								dataType : "json",
								data : {"id" : $("#u_id").val()},
								success : function(data) {
									if (data == 1){
										alert("중복된 아이디입니다.");
									}else if(data == 0){
										$("#user_idCheck").attr("value", "Y");
										alert("사용가능한 아이디 입니다.");
									}
								}
							})
						}
         				</script>

                     <form action = "Signup" method="post">
                        <div class="form-group">
                           <label>ID를 입력하세요</label>
                           <input type="String" name = "u_id" class="form-control"  placeholder="Please enter your ID">
                        	<button class = "user_idCheck btn-success" type = "button" id = "u_id" onclick = "user_idCheck" value = "N">ID중복 확인</button>
                        </div>
                        <div class="form-group">
                           <label>비밀번호를 입력하세요</label>
                           <input type="password" name = "u_pw" class="form-control" placeholder="Password">
                        	</div>
                       <div class="form-group">
                           <label>주소를 입력하세요</label>
                           <input type="text" name = "u_addr" class="form-control" placeholder="Please enter your address">
                        </div> <div class="form-group">
                           <label>성별을 입력하세요</label>
                           <input type="text" name = "u_gender" class="form-control" placeholder="Please enter your gender">
                        </div>
                         <div class="form-group">
                           <label>이메일을 입력하세요</label>
                           <input type="email" name = "u_email" class="form-control" placeholder="Please enter your e-mail">
                        </div>
                         <div class="form-group">
                           <label>생년 월일을 입력하세요</label>
                           <input type="date" name = "u_birthday" class="form-control" placeholder="Please enter your birthday">
                        </div>
                        <div class="mt-4">
                           <button type="submit" class="btn btn-outline-primary btn-block btn-lg">Sign Up</button>
                        </div>
                     </form>

                     <div class="text-center mt-5">
                        <p  name = "user_signup" class="light-gray">Already have an Account? <a href="login.html">Sign In</a></p>
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
                              <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries</p>
                           </div>
                        </div>
                        <div class="item">
                           <div class="carousel-login-card text-center">
                              <img src="resources/img/login.png" class="img-fluid" alt="LOGO">
                              <h5 class="mt-5 mb-3">Download videos effortlessly</h5>
                              <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries</p>
                           </div>
                        </div>
                        <div class="item">
                           <div class="carousel-login-card text-center">
                              <img src="resources/img/login.png" class="img-fluid" alt="LOGO">
                              <h5 class="mt-5 mb-3">Create GIFs</h5>
                              <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries</p>
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