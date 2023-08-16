<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true"%>
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp"%>
<title>검색 결과</title>
</head>
<body id="page-top">
	<%@include file="include/nav.jsp"%>
	<!-- Sidebar -->
	<%@include file="include/sidebar.jsp"%>

	<div id="wrapper">
		<div id="content-wrapper">
			<div class="single-channel-page" id="content-wrapper">

				<!-- 여기서 부터 본문 작성 -->
				<c:if test="${movieList ne null}">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="main-title">
									<h5>
										<strong>ㅤ영화 검색 결과</strong>
									</h5>
										<p>설정한 조건에 일치하는 검색 결과 입니다.</p>
									<hr>

									<!--<div class="btn-group float-right right-action">
										<a href="#" class="right-action-link text-gray"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"> Sort by <i
											class="fa fa-caret-down" aria-hidden="true"></i>
										</a>
										<div class="dropdown-menu dropdown-menu-right">
											<select id="cntPerPage" name="sel" onchange="selChange()">
												<option value="5" class="dropdown-item"
													<c:if test="${paging.cntPerPage == 5}">selected</c:if>>
													&nbsp; 5줄 보기</option>
												<option value="10" class="dropdown-item"
													<c:if test="${paging.cntPerPage == 10}">selected</c:if>>
													&nbsp; 10줄 보기</option>
												<option value="15" class="dropdown-item"
													<c:if test="${paging.cntPerPage == 15}">selected</c:if>>
													&nbsp; 15줄 보기</option>
												<option value="20" class="dropdown-item"
													<c:if test="${paging.cntPerPage == 20}">selected</c:if>>
													&nbsp; 20줄 보기</option>
											</select>
										</div>
									</div> -->
								</div>
							</div>
							<script type="text/javascript">
								function selChange() {
									var sel = document
											.getElementById('cntPerPage').value;
									location.href = "boardList?nowPage=${paging.nowPage}&cntPerPage="
											+ sel;
								}
							</script>
							<c:if test="${movieDtoList != null }">
								<c:forEach var="list" items="${requestScope.movieDtoList }">
									<div class="col-xl-3 col-sm-6 mb-3">
										<div class="category-item mt-0 mb-0">
											<a
												href="${contextPath }/movieDetail?m_number=${list.m_number }">
												<img class="img-fluid"
												src="${contextPath }/resources/img/images/${list.m_name }.jpg"
												alt="">
												<h6><strong>
													 ${list.m_name }<span title="" data-placement="top"
														data-toggle="tooltip"></i></span>
												</strong></h6>
												<p>평점 : ${list.m_grade }</p>
											</a>
										</div>
									</div>
								</c:forEach>
							</c:if>

						</div>

						<nav aria-label="Page navigation example"
							style="display: block; text-align: center;">
							<ul class="pagination justify-content-center pagination-sm mb-0">
								<c:if test="${paging.startPage != 1 }">
									<li class="page-item"><a class="page-link"
										href="${contextPath }/searchresult?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">Previous</a>
									</li>

								</c:if>

								<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
									var="p">
									<c:choose>
										<c:when test="${p == paging.nowPage }">
											<li class="page-item active"><button type="button"
													class="page-link">${p }</button></li>
										</c:when>
										<c:when test="${p != paging.nowPage }">
											<a class="page-item"
												href="${contextPath }/searchresult?nowPage=${p }&cntPerPage=${paging.cntPerPage}"><button
													type="button" class="page-link">${p }</button></a>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${paging.endPage != paging.lastPage}">
									<li class="page-item"><a class="page-link"
										href="${contextPath }/searchresult?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">Next</a>
									</li>
								</c:if>
							</ul>

						</nav>


					</div>

				</c:if>

				<c:if test="${fn:length(movieList) == 0}">
				<div class="category-item mt-0 mb-0">
					<h6>조건에 일치하는 검색 결과가 없습니다.</h6>
					<br>
					<div>
						<button type="button" class="btn btn-secondary border-none" onclick="history.back()">뒤로가기</button>
					</div>
					</div>
				</c:if>


			</div>

		</div>
	</div>
	<!-- /.container-fluid -->
	</div>
	<!-- /.content-wrapper -->

	<!-- /#wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<%@include file="include/logoutModal.jsp"%>
	<!-- JavaScript -->
	<%@include file="include/js.jsp"%>
</body>

</html>
