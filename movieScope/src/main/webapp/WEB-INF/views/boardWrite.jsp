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
	               
               <img class="img-fluid" alt="" src="resources/img/channel-banner5.png">
               <div class="channel-profile">
                  <img class="channel-profile-img" alt="" src="${contextPath }/resources/img/s2.png">
               </div>
            </div>
            <div class="container-fluid pb-0">
            <div class="main-title">
					<h5><strong>ㅤ유저 영화 게시판</strong></h5>
					<p>Cinescope 사용자들이 직접 작성한 영화 관련 게시물을 확인해보세요</p>
					
				</div>
            <!-- 여기서 부터 작성 -->                        
            <%
				int user3 = Integer.parseInt(request.getParameter("user"));
			%>   
			<form action="boardWrite" method="post">
				<input type="hidden" name="FK_u_number" value="${user}"> <!-- 현재 로그인한 사용자의 u_number 값을 hidden 필드로 추가 -->
				<div class="form-group">
				<label>제목</label> <input type="text" name='b_title' class="form-control"  value="${board.b_title}"/>
				</div>
				<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="b_context" rows="3"></textarea>
					</div>
				<input type="hidden" name="user" value="<%= user3 %>">
				<div>
				<input class="btn btn-outline-primary" type="submit" value="쓰기">
				</div>
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
