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
            <%
				int b_number = Integer.parseInt(request.getParameter("b_number"));
				int FK_u_number = Integer.parseInt(request.getParameter("FK_u_number"));
				int a_number = Integer.parseInt(request.getParameter("a_number"));
				String a_context = request.getParameter("a_context");
			%>
			
			<form action="article_Insert" method="POST">
				내용: <input type="text" name="a_context"><br>
				<input type="hidden" name="b_number" value="<%= b_number %>">
				<input type="hidden" name="FK_u_number" value="<%= FK_u_number %>">
				<input type="hidden" name="a_number" value="<%= a_number %>">
				<input type="submit" value="댓글 작성">
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
