<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
			<div class="single-channel-page" id="content-wrapper">
              <div class="single-channel-image">
               <img class="img-fluid" alt="검색 샘플 이미지" src="resources/img/channel-banner2.jpg">
            </div>
            <div class="container-fluid pb-0">
			<div class="single-channel-image">
	               
            </div>
               <div class="top-mobile-search">
					<div class="row">
                     <div class="col-md-12">   
                        <form class="mobile-search">
                           <div class="input-group">
                             <input type="text" placeholder="Search for..." class="form-control">
                               <div class="input-group-append">
                                 <button type="button" class="btn btn-dark"><i class="fas fa-search"></i></button>
                               </div>
                           </div>
                        </form>   
                     </div>
                  </div>
               </div>
               <div class="top-category section-padding mb-4">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="main-title">
                           
                           <!--  영화 정보 입력 하는 곳 -->
                          <%
                          Date date = new Date();
                          SimpleDateFormat fomatter = new SimpleDateFormat("MM");
                          String str = fomatter.format(date);
                          if(str.charAt(0) == '0'){
                        	  str = String.valueOf(str.charAt(1));
                          }
                          %>
                           <h5><strong>ㅤ<%=str%>월에 개봉한 영화</strong></h5>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="owl-carousel owl-carousel-category">
                        <c:forEach var="recommend" items="${recommendList}">
		                           <div class="item">
		                              <div class="category-item">
		                                 <!-- 게시물 고유 주소 -->
		                                 	<a href="/dong/movieDetail?m_number=${recommend.m_number}">
		                                 <!-- 영화 이미지 -->
		                                    <img class="img-fluid" src="resources/img/images/${recommend.m_name}.jpg" alt="">
		                                 <!-- 영화 제목 -->                                 
		                                    <strong><h6>${recommend.m_name}</h6></strong>
		                                 <!-- 주연 -->
		                                    <p><strong>주연:</strong>${recommend.m_actor}</p>
		                                 <!-- 감독  -->
		                                    <p><strong>감독:</strong>${recommend.m_director}</p>
		                                 <!-- 더미 -->
		                                 </a>
		                              </div>
		                           </div>
                       </c:forEach>
		                           
                       </div>
                    </div>       
               </div>
              </div>
            <hr> 
                     <c:if test="${fav ne null}">
                     <c:if test="${user ne null}">
            	<div class="row">
                     <div class="col-md-12">
                        <div class="main-title">
                           
                             <!--  영화 정보 입력 하는 곳 -->  <!--  영화 정보 입력 하는 곳 -->
                             
                           <h5><strong>ㅤ오늘의 추천 영화</strong></h5>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="owl-carousel owl-carousel-category">
                        <c:forEach var="recommend" items="${recommendList2}">
		                           <div class="item">
		                              <div class="category-item">
		                                 <!-- 게시물 고유 주소 -->
		                                 	<a href="/dong/movieDetail?m_number=${recommend.m_number}">
		                                 <!-- 영화 이미지 -->
		                                    <img class="img-fluid" src="resources/img/images/${recommend.m_name}.jpg" alt="">
		                                 <!-- 영화 제목 -->                                 
		                                    <strong><h6>${recommend.m_name}</h6></strong>
		                                 <!-- 주연 -->
		                                    <p><strong>주연:</strong>${recommend.m_actor}</p>
		                                 <!-- 감독  -->
		                                    <p><strong>감독:</strong>${recommend.m_director}</p>
		                                 <!-- 더미 -->
		                                 </a>
		                              </div>
		                           </div>
                       </c:forEach>
                       </div>
                    </div>  
               </div>
               <hr>
               </c>
                    </c:if>
                    </c:if>     
               <div class="row">
                     <div class="col-md-12">
                        <div class="main-title">
                           
                             <!--  영화 정보 입력 하는 곳 -->  <!--  영화 정보 입력 하는 곳 -->  <!--  영화 정보 입력 하는 곳 -->
                           
                           <h5><strong>ㅤ무작위 추천 영화</strong></h5>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="owl-carousel owl-carousel-category">
                        <c:forEach var="recommend" items="${randomList}">
		                           <div class="item">
		                              <div class="category-item">
		                                 <!-- 게시물 고유 주소 -->
		                                 	<a href="/dong/movieDetail?m_number=${recommend.m_number}">
		                                 <!-- 영화 이미지 -->
		                                    <img class="img-fluid" src="resources/img/images/${recommend.m_name}.jpg" alt="">
		                                 <!-- 영화 제목 -->                                 
		                                    <strong><h6>${recommend.m_name}</h6></strong>
		                                 <!-- 주연 -->
		                                    <p><strong>주연:</strong>${recommend.m_actor}</p>
		                                 <!-- 감독  -->
		                                    <p><strong>감독:</strong>${recommend.m_director}</p>
		                                 <!-- 더미 -->
		                                 </a>
		                              </div>
		                           </div>
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
      </div>
      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i> </a>
      
      <!-- Logout Modal-->
      <%@include file="include/logoutModal.jsp" %>
      <!-- JavaScript -->
      <%@include file="include/js.jsp" %>
   </body>

</html>
