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
		<div class="single-channel-page" id="content-wrapper">
			<div class="single-channel-image">
	               
              <img class="img-fluid" alt="검색 샘플 이미지" src="resources/img/channel-banner5.jpg">
            <div class="container-fluid pb-0">
        	<div class="main-title">
					<h5><strong>ㅤ유저 영화 게시판</strong></h5>
					<p>Cinescope 사용자들이 직접 작성한 영화 관련 게시물을 확인해보세요</p>
					
				</div>
        	<!-- 게시판모형 -->
        	<br>
        	<table class="table table-hover">
        		<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">내용</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
				</tr>
					<c:forEach var="board" items="${boardListAll }">
						<tr>
							<td>${board.b_number}</a></td>
							<td><a href="board_Detail?b_number=${board.b_number}&user=${user}">${board.b_title }</td>
							<td>${board.b_context }</td>
							<td>${board.u_id }</td>
							<td>${board.b_date }</td>
							<td>${board.b_cnt }</td>
						</tr>
					</c:forEach>
			</table>
			<button class="btn btn-outline-primary"><a href="boardWrite?&user=${user}"><i class="fas fa-fw fa-pen"></i> 쓰기</a></button>
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
      <%@include file="include/logoutModal.jsp" %>
	  <!-- JavaScript -->
      <%@include file="include/js.jsp" %>   
   </body>

</html>
