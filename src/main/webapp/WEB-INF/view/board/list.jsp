<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/job/js/jquery-1.11.3.min.js"></script>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center">
<div class="in-align-center">
        <h1>채용 공고 리스트</h1>
    </div>
<table class="table"> 
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<c:forEach var="bdto" items="${list}" >
				<th>${bdto.no}</th>
				<th><a href="#">${bdto.title}</a></th>
				<th>${bdto.company}</th>
				<th>${bdto.reg}</th>
				<th>${bdto.count}</th>
			</c:forEach>
		</tr>
	</tbody>
</table>
<div class="div-2">
			<div class="container-100">
				<input type="button" class="button shape-circle" value="뒤로가기"
					onclick="">
			</div>
			<div class="container-100">
				<div class="in-align-right">
					<input type="submit" class="button shape-circle" value="작성하기">
				</div>
			</div>
		</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>