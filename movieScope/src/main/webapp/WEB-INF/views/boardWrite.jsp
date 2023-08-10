<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set> 
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp" %>
</head>
<body id="page-top">
<%@include file="include/nav.jsp"%>
<!-- Sidebar -->
<%@include file="include/sidebar.jsp" %>
<div id="wrapper">
		<div id="content-wrapper">
			<div class="single-channel-image">
	               
               <img class="img-fluid" alt="" src="resources/img/channel-banner.png">
               <div class="channel-profile">
                  <img class="channel-profile-img" alt="" src="resources/img/s2.png">
               </div>
            </div>
            <div class="container-fluid pb-0">
            <!-- 여기서 부터 작성 -->                           
			<form action="boardWrite" method="post">
				b_cnt: <input type="text" name="b_cnt"> <br>
				<input type="hidden" name="FK_u_number" value="${user}"> <!-- 현재 로그인한 사용자의 u_number 값을 hidden 필드로 추가 -->
				b_title: <input type="text" name="b_title"> <br>
				b_context: <input type="text" name="b_context"> <br>
				b_date(2021-01-01): <input type="date" name="b_date"> <br> 
				<input type="submit" value="글작성">
			</form>
			         



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
      <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i> </a>
      
      <!-- Logout Modal-->
      <%@include file="include/logoutModal.jsp" %>
      <!-- JavaScript -->
      <%@include file="include/js.jsp" %>
   </body>

</html>
