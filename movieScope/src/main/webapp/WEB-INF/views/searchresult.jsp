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
                  <div class="row">
                     <div class="col-md-12">
                        <div class="main-title">
                           <div class="btn-group float-right right-action">
                              <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                              </a>
                              <div class="dropdown-menu dropdown-menu-right">
                                 <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                                 <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                                 <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
                              </div>
                           </div>
                           <h6>Movie List</h6>
                        </div>
                     </div>
                     
                     <c:forEach var="list" items="${requestScope.movieDtoList}">
	                     	<div class="col-xl-3 col-sm-6 mb-3">
		                        <div class="category-item mt-0 mb-0">
		                           <a href="${contextPath }/movieDetail?m_number=${list.m_number }">
		                              <img class="img-fluid" src="${contextPath }/resources/img/images/${list.m_name }.jpg" alt="">
<<<<<<< HEAD
		                              <h6>영화 제목 : ${list.m_name }<span title="" data-placement="top" data-toggle="tooltip" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></span></h6>
=======
		                              <h6><strong>영화 제목 : ${list.m_name }</strong></h6>
>>>>>>> branch 'lim6' of https://github.com/shjjang04/cineScope.git
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
      <!-- Bootstrap core JavaScript-->
      <%@include file="include/js.jsp" %>
   </body>

</html>
