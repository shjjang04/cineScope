<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" %>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp" %>

<title> </title>

</head>
   <%@include file="include/top.jsp"%>
      <div id="wrapper">
         <!-- Sidebar -->
         <%@include file="include/sidebar.jsp" %>

           <body id="page-top">
      <div id="wrapper">
         <div id="content-wrapper">
            <div class="container-fluid upload-details">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="main-title">
                        <h6>Settings</h6>
                     </div>
                  </div>
               </div>
               <form action="update" method="post">
                  <div class="row">
                     <div class="col-sm-6">
                        <div class="form-group">
                           <label class="control-label">password <span class="required">*</span></label>
                           <input class="form-control border-form-control" name="u_pw" placeholder="비밀번호" type="text">
                        </div>
                     </div>
                     <div class="col-sm-6">
                        <div class="form-group">
                           <label class="control-label">address <span class="required">*</span></label>
                           <input class="form-control border-form-control" name="u_addr" placeholder="주소" type="text">
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-sm-6">
                        <div class="form-group">
                           <label class="control-label">Email Address <span class="required">*</span></label>
                           <input class="form-control border-form-control " name="u_email" placeholder="이메일" type="email">
                        </div>
                     </div>
                     <div class="col-sm-6">
                        <div class="form-group">
                           <label class="control-label">gender <span class="required">*</span></label>
                           <select  class="custom-select" name="u_gender">
                        	   <option value="남자">남자</option>
                               <option value="여자">여자</option>
                           </select>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-sm-12 text-right">
                        <button type="button" onclick="location.href='${contextPath}/'" class="btn btn-danger border-none"> Cencel </button>
                        <button type="submit" class="btn btn-success border-none"> Save Changes </button>
                     </div>
                  </div>
               </form>
            </div>
            <!-- /.container-fluid -->
            <!-- Sticky Footer -->
         </div>
         <!-- /.content-wrapper -->
     
      <!-- Bootstrap core JavaScript-->
      <%@include file="include/js.jsp" %>
   </body>
            <%@include file="include/footer.jsp" %>
</html>
