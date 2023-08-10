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
					<button type="submit" class="btn btn-primary">수정완료</button>
					<a href='board__remove?b_number=${board.b_number}'>제거</a>
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
