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
		    <table>
				<tr>
					<td>제목: ${board.b_title }</td>
				</tr>
				<tr>
					<td>내용: ${board.b_context }</td>
				</tr>
				<tr>
					<td>작성일: ${board.b_date }</td>
				</tr>
			</table>
			<c:forEach var="article" items="${article }">
		 		<tr>
		 			<a href="article_Insert?b_number=${board.b_number}&FK_u_number=${board.FK_u_number}&a_number=${article.a_number}">댓글작성</a><br>
		 			<td>댓글작성자: ${article.FK_u_number }</td>
		 			<td>내용: ${article.a_context }</td>
					<a href="article_Modify?a_number=${article.a_number}&user=${user}&b_number=${board.b_number}">수정</a>
					<a href="article_Remove?a_number=${article.a_number}&user=${user}&b_number=${board.b_number}">삭제</a><br>
		 		</tr>
			</c:forEach>
			
			<button><a href="board_Modify?b_number=${board.b_number}">글수정</a></button>          
		                           
		                           
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
      <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                  </button>
               </div>
               <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
               <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <a class="btn btn-primary" href="login.html">Logout</a>
               </div>
            </div>
         </div>
      </div>
      <%@include file="include/js.jsp" %>
   </body>

</html>
