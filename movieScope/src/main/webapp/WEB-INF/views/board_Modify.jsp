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
            	<form role="form" method="post" action="boardListAll">
					<div class="form-group">
						<label>제목</label> <input type="text" name='b_title' class="form-control"  value="${board.b_title}"/>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="b_context" rows="3">${board.b_context}</textarea>
					</div>
					<!-- <a href='board__Modify?b_number=${board.b_number},b_title=${board.b_title},b_context=${board.b_context}'>수정</a>  -->
<<<<<<< HEAD
					<button type="submit" class="btn"><a href='board__Modify?b_number=${board.b_number},b_title=${board.b_title},b_context=${board.b_context}'>수정</a></button>
					<button type="submit" class="btn"><a href='board__remove?b_number=${board.b_number}'>제거</a></button>
=======
					<button type="submit" class="btn btn-primary">수정완료</button>
					<a href='board__remove?b_number=${board.b_number}'>제거</a>
>>>>>>> branch 'lim7' of https://github.com/shjjang04/cineScope.git
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
