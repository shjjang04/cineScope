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
	               
               <img class="img-fluid" alt="" src="${contextPath }/resources/img/channel-banner.png">
               <div class="channel-profile">
                  <img class="channel-profile-img" alt="" src="${contextPath }/resources/img/s2.png">
               </div>
            </div>
            <div class="container-fluid pb-0">
            <!-- 여기서 부터 작성 --> 
            
                                      
		    <table class="table table-hover">
		    	<thead>
		    	<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">조회수</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">제목</th>
				</tr>
					<tr>
						<td>${board.b_number }</td>
						<td>${board.b_cnt }</td>
						<td>${user }</td>
						<td>${board.b_date }</td>
						<td>${board.b_title }</td>
					</tr>
			
				<tr>
					<td>내용</td>
				</tr>
				<tr height="1" bgcolor="#FAD3EB">
					<td colspan="4" width="407">${board.b_context }</td>
				</tr>
			</table>
			
			<button><a href="board_Modify?b_number=${board.b_number}">글수정</a></button> 
			<hr>  
			
		 	<a href="article_Insert?b_number=${board.b_number}&user=${user}">댓글작성</a><br>
			<c:forEach var="article" items="${article }">
		 		<tr>
		 			<td>댓글작성자: ${article.FK_u_number }</td>
		 			<td>내용: ${article.a_context }</td>
					<a href="article_Modify?a_number=${article.a_number}&user=${user}&b_number=${board.b_number}">수정</a>
					<a href="article_Remove?a_number=${article.a_number}&user=${user}&b_number=${board.b_number}">삭제</a><br>
		 		</tr>
			</c:forEach>
			
			       
		                           
		                           
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
