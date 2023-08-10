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
        	
        	<!-- 게시판모형 -->
        	<button><a href="boardWrite?&user=${user}">글작성</a></button>
        	<table>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날자</th>
				</tr>
					<c:forEach var="board" items="${boardListAll }">
						<tr>
							<td>${board.b_number }</td>
							<td><a href="board_Detail?b_number=${board.b_number}&user=${user}">${board.b_title}</a></td>
							<td>${board.b_date }</td>
						</tr>
					</c:forEach>
			</table>
			<script type="text/javascript">
				$(document).ready(function(){
											
					var actionForm = $("#actionForm");
					
					$(".paginate_button a").on("click", function(e){
						
						e.preventDefault();
						
						console.log('click');
						
						actionForm.find("input[name='pageNum']").val($(this).attr("href"));
						actionForm.submit();
					});
				});
				?pageNum='+${pageMaker.cri.pageNum }+'&amount='+ ${pageMaker.cri.amount }
			</script>
			
			<form id="actionForm" action="boardListAll" method='get'>
				<input type='hidden' name='pageNum' value = "${pageMaker.cri.pageNum }">
				<input type='hidden' name='amount' value = "${pageMaker.cri.amount }">
			</form>
			
			<div aria-label="Page navigation example" style="display: block; text-align: center;">
				<ul class="pagination justify-content-center pagination-sm mb-0"">
					<c:if test='${pageMaker.prev }'>
						<li class="paginate_button previous page-item"><a class="page-link" href="${contextPath }/boardListAll?pageNum=${pageMaker.startPage - 1 }"> Previous </a>
						</li>
					</c:if>
				
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? "active":"" } "><a class="page-link" href="${contextPath }/boardListAll?pageNum=${num}&amount=${pageMaker.cri.amount }">${num }</a></li>
					</c:forEach>
				
					<c:if test="${pageMaker.next }">
						<li class="paginate_button next page-item"><a class="page-link" href="${contextPath }/boardListAll?pageNum=${pageMaker.endPage + 1 }">Next</a></li>
					</c:if>
				</ul>
			</div>
            <!-- end Pagination -->         
		                           
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
