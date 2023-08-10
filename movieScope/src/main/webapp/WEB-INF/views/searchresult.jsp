<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp" %>

<title>search 결과 보여주는 화면</title>

</head>
 <body id="page-top">
<%@include file="include/nav.jsp"%>
   <!--  Sidebar -->
<%@include file="include/sidebar.jsp" %>
      <div id="wrapper">
         <!-- Sidebar -->

         <div id="content-wrapper">
            <div class="container-fluid upload-details">
            <!-- 여기서 부터 본문 작성 -->
           	<c:if test="${movieList ne null}">
				<div class="video-block section-padding">
                  <div class="row" id="scroll">
                     <div class="col-md-12">
                        <div class="main-title">
                           <h5><strong>ㅤ영화 검색 결과</strong></h6>
                        </div>
                     </div>
                     
                     <c:forEach var="list" items="${requestScope.movieDtoList0}">
	                     	<div class="col-xl-3 col-sm-6 mb-3">
		                        <div class="category-item mt-0 mb-0">
		                           <a href="${contextPath }/movieDetail?m_number=${list.m_number }">
		                              <img class="img-fluid" src="${contextPath }/resources/img/images/${list.m_name }.jpg" alt="">
		                              <h6><strong>${list.m_name }</strong></h6>
		                              <p>평점 : ${list.m_grade }</p>
		                           </a>
		                        </div>
	                     	</div>
                     </c:forEach>
                     
                  </div>
                  <nav aria-label="Page navigation example">
                     <ul class="pagination justify-content-center pagination-sm mb-0">
                        <li class="page-item disabled">
                           <a class="page-link" href="#" tabindex="-1">Previous</a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                           <a class="page-link" href="#">Next</a>
                        </li>
                     </ul>
                  </nav>
               </div>
               
            </c:if>
            
            <c:if test="${fn:length(movieList) == 0}">
            	<h1> 검색하신 영화가 없습니다.</h1>
            </c:if>
            
              
            </div>

            <!-- /.container-fluid -->
         </div>
         <!-- /.content-wrapper -->
      </div>
      <!-- /#wrapper -->
      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
      </a>
       <!-- Logout Modal-->
      <%@include file="include/logoutModal.jsp" %>
      <!-- JavaScript -->
      <%@include file="include/js.jsp" %>
   </body>

</html>
