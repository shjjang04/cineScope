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
<<<<<<< HEAD
			<div class="single-channel-page" id="content-wrapper">
              <div class="single-channel-image">
               <img class="img-fluid" alt="" src="resources/img/channel-banner.png">
            </div>
            <div class="container-fluid pb-0">
        	
        	<!-- 게시판모형 -->
        	<table class="table table-hover">
        		<thead>
=======
			<div class="single-channel-image">
	               
               <img class="img-fluid" alt="" src="resources/img/channel-banner.png">
               <div class="channel-profile">
                  <img class="channel-profile-img" alt="" src="resources/img/s2.png">
               </div>
            </div>
            <div class="container-fluid pb-0">
        	
        	<!-- 게시판모형 -->
        	<button><a href="boardWrite?&user=${user}">글작성</a></button>
        	<table>
>>>>>>> branch 'lim7' of https://github.com/shjjang04/cineScope.git
				<tr>
<<<<<<< HEAD
					<th scope="col">번호</th>
					<th scope="col">영화</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
=======
					<th>번호</th>
					<th>제목</th>
					<th>날자</th>
>>>>>>> branch 'lim7' of https://github.com/shjjang04/cineScope.git
				</tr>
					<c:forEach var="board" items="${boardListAll }">
						<tr>
<<<<<<< HEAD
						<td>${board.b_number }</td>
						<td>${movie.m_name }</td>
						<td><a href="board_Detail?b_number=${board.b_number}&user=${user}">${board.b_title}</a></td>
						<td>${board.FK_u_number }</td>
						<td>${board.b_date }</td>
						<td>${board.b_cnt }</td>
=======
							<td>${board.b_number }</td>
							<td><a href="board_Detail?b_number=${board.b_number}&user=${user}">${board.b_title}</a></td>
							<td>${board.b_date }</td>
>>>>>>> branch 'lim7' of https://github.com/shjjang04/cineScope.git
						</tr>
					</c:forEach>
			</table>
<<<<<<< HEAD
        	<button><a href="boardWrite?&user=${user}">글작성</a></button>
=======
>>>>>>> branch 'lim7' of https://github.com/shjjang04/cineScope.git
                           
		                           
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
