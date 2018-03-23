<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!-- 회사 등록 요청 목록 게시판 -->
<table class="table font-medium">
	<thead>
		<tr>
			<th>번호</th>
			<th>회사</th>
			<th>분야</th>
			<th>대표자명</th>
			<th>설립일</th>
			<th>웹 사이트 주소</th>
			<th>사원 수</th>
			<th>기업 형태</th>
			<th>매출</th>
			<th>회사 주소</th>
			<th>등록여부</th>
		</tr>
	</thead>
	<!-- company 데이터 수에 따라 반복문 -->
	<!-- 미등록된 회사만보는 목록 만들기 -->
	<!-- 검색 -->
	<tbody>
		<tr>
			<td>번호</td>
			<td>회사</td>
			<td>분야</td>
			<td>대표자명</td>
			<td>설립일</td>
			<td>웹 사이트 주소</td>
			<td>사원 수</td>
			<td>기업 형태</td>
			<td>매출</td>
			<td>회사 주소</td>
			<!-- 등록버튼 누를시 알림창-->
			<td>등록완료or<button>등록</button></td>
		</tr>
	</tbody>
</table>

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>