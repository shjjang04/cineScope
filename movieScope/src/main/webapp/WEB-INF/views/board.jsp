<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<head>
<%@include file="include/head.jsp" %>
</head>
<body id="page-top">
<%@include file="include/nav.jsp"%>
<!-- Sidebar -->
<%@include file="include/sidebar.jsp" %>

<div id="wrapper">
<!-- Sidebar -->
<%@include file="include/sidebar.jsp" %>>

    <div id="main">
        <h1>Hidden Page</h1>
        <hr><br>
        <button type="button" class="btn btn-primary">전체글</button>
        <button type="button" class="btn btn-info">개념글</button>
        <button type="button" class="btn btn-info">공지</button>
        <br><br>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>글쓴이</th>
                    <th>작성일</th>
                    <th>조회</th>
                    <th>추천</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>265121</td>
                    <td>엌 아래글 진짜 관리자임?</td>
                    <td>ㅇㅇ</td>
                    <td>2020.04.23</td>
                    <td>1000</td>
                    <td>100</td>
                </tr>
                <tr>
                    <td>265120</td>
                    <td>본인 방금 추천 많이 받아서 개념글 상상함</td>
                    <td>운영자</td>
                    <td>2020.04.23</td>
                    <td>7000</td>
                    <td>150</td>
                </tr>
            </tbody>
        </table>

        <br><br><br><br>
        <button type="button" class="btn btn-primary float-left">전체글</button>
        <button type="button" class="btn btn-info float-left">개념글</button>
        <button type="button" class="btn btn-info float-right">글쓰기</button>

        <br><br>
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item"><a class="page-link" href="#">Previous</a></li>
              <li class="page-item"><a class="page-link" href="h#">1</a></li>
              <li class="page-item"><a class="page-link" href="http://127.0.0.1:5500/index.html#">2</a></li>
              <li class="page-item"><a class="page-link" href="http://127.0.0.1:5500/index.html#">3</a></li>
              <li class="page-item"><a class="page-link" href="http://127.0.0.1:5500/index.html#">4</a></li>
              <li class="page-item"><a class="page-link" href="http://127.0.0.1:5500/index.html#">5</a></li>
              <li class="page-item"><a class="page-link" href="http://127.0.0.1:5500/index.html#">Next</a></li>
            </ul>
        </nav>
    </div>
	
	<!-- Sticky Footer -->
    <%@include file="include/footer.jsp" %>
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
