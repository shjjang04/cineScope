<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page session="true" %>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp" %>

<title>영화조회 </title>

</head>

 <body class="login-main-body">
<title>VIDOE - Video Streaming Website HTML Template</title>
      <section class="login-main-wrapper">
         <div class="container-fluid pl-0 pr-0">
            <div class="row no-gutters">
               <div class="col-md-5 p-5 bg-white full-height">
                  <div class="login-main-left">
                     <div class="text-center mb-5 login-main-left-header pt-4">
                        <img src="img/favicon.png" class="img-fluid" alt="LOGO">
                        <h5 class="mt-3 mb-3">Welcome to Vidoe</h5>
                        <p>It is a long established fact that a reader <br> will be distracted by the readable.</p>
                     </div>
                     <form action="register" method="post">
                        <div class="form-group">
                           <label>id</label>
                           <input type="text" class="form-control" name="u_id" placeholder="아이디">
                        </div>
                        <div class="form-group">
                           <label>Password</label>
                           <input type="password" class="form-control" name="u_pw" placeholder="비밀번호">
                        </div>
                        <div class="form-group">
                           <label>email</label>
                           <input type="text" class="form-control" name="u_email" placeholder="이메일">
                        </div>
                         <div class="form-group">
                           <label>address</label>
                           <input type="text" class="form-control" name="u_addr" placeholder="주소">
                        </div>
                         <div class="form-group">
                           <label>gender</label>
                           <input type="text" class="form-control" name="u_gender" placeholder="성별">
                        </div>
                         <div class="form-group">
                           <label>birthday</label>
                           <input type="date" class="form-control" name="u_birthday" placeholder="출생년도">
                        </div>
                        <div class="mt-4">
                           <button type="submit" class="btn btn-outline-primary btn-block btn-lg">Sign Up</button>
                        </div>
                     </form>
                     <div class="text-center mt-5">
                        <p class="light-gray">Already have an Account? <a href="login">Sign In</a></p>
                     </div>
                  </div>
               </div>
               <div class="col-md-7">
               </div>
            </div>
         </div>
      </section>
 
   </body>

</html>
