<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page session="true" %>
<!DOCTYPE html>
   
<head>
    <%@include file="include/head.jsp"%>
    <script>
		function favCheck() {
			var fav =  document.getElementById("fav");
         	   if(${fav} > 0){
					fav.classList.add("btn-danger");
					fav.classList.remove("btn-success");
         	   }else{
         		fav.classList.add("btn-success");
         		fav.classList.remove("btn-danger");
         	   }
		}   		
   	</script>
   </head>
   <body id="page-top" onload="favCheck();">
   <%@include file="include/nav.jsp"%>
      <%@include file="include/sidebar.jsp" %>
      <div id="wrapper">
         <!-- Sidebar -->
         <div id="content-wrapper">
            <div class="container-fluid pb-0">
               <div class="video-block section-padding">
                  <div class="row">
                     <div class="col-md-8">
                        <div class="single-video-left">
                           <div class="single-video">
                           <img class="img-fluid" src="/dong/resources/img/images/${movie[0]}.jpg" alt="">
                           </div>
                           <div class="single-video-title box mb-3">
                              <h2><a href="#">${movie[0]}</a></h2>
                              <p class="mb-0"><i class="fas fa-eye"></i> ${movie[6]}</p>
                              <button class="btn btn-success border-none" id="fav" type="button"><i class="fas fa-bell"></i></button>
                           <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
                           <script>
                               var fav =  document.getElementById("fav");
                               fav.onclick = function() {
                            	   if(fav.classList.contains('btn-success')){
                            		location.href="movieDetail/add?FK_m_number=${m_number}"
                            	   }else{
                            		location.href="movieDetail/cancel?FK_m_number=${m_number}"
                            	   }
                            	   
								};

								
								
                              </script>
                           </div>
                           <div class="single-video-info-content box mb-3">
                        	  <h6>국가 :</h6>
                              <p>${movie[10]}<br> 
                              <h6>감독/주연 :</h6>
                              <p>${movie[3]}<br> 
                              ${movie[4]}</p>
                              <h6>장르 :</h6>
                              <p>${movie[9]}</p>
                              <h6>개봉일 :</h6>
                              <p>${movie[1]}</p>
                              <h6>평점 :</h6>
                              <p>${movie[5]}</p>
                              <h6>런타임 :</h6>
                              <p>${movie[7]}<br>
							  <c:if test="${movie[8] ne 'null' }">
							  <h6>수상 :</h6>
                              <p>${movie[8]}<br>
							  </c:if>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-video-right">
                        <c:if test="${list ne 'null'}">
                        	<c:forEach var="list" items="${list}">
                        		<tr>
                        			<td>${list}
                        		</tr>
                        	</c:forEach>
                        </c:if>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.container-fluid -->
               <div class="container">
                  <div class="row no-gutters">
                     <div class="col-lg-6 col-sm-6">
                        <p class="mt-1 mb-0"><strong class="text-dark">Vidoe</strong>. 
                           <small class="mt-0 mb-0"><a class="text-primary" target="_blank" href="https://templatespoint.net/">TemplatesPoint</a>
                           </small>
                        </p>
                     </div>
                     <div class="col-lg-6 col-sm-6 text-right">
                        <div class="app">
                           <a href="#"><img alt="" src="img/google.png"></a>
                           <a href="#"><img alt="" src="img/apple.png"></a>
                        </div>
                     </div>
                  </div>
               </div>
            </footer>
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