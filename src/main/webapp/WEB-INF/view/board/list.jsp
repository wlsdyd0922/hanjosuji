<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<th>1</th>
			<th>a</th>
			<th>수지</th>
			<th>1910.01.01</th>
			<th>1000</th>
		</tr>
		<tr>
			<th>2</th>
			<th>b</th>
			<th>수지</th>
			<th>1920.01.01</th>
			<th>500</th>
		</tr>
	</tbody>
</table>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>