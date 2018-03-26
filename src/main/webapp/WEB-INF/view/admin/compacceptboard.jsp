<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!-- 진용이형 코드 -->
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
<!-- 	company 데이터 수에 따라 반복문 -->
<!-- 	미등록된 회사만보는 목록 만들기 -->
<!-- 	검색 -->
	<tbody>
	<c:forEach var="list" items="${list}">
		<tr>
			<td>${list.no}</td>
			<td>${list.name}</td>
			<td>${list.industry}</td>
			<td>${list.ceo}</td>
			<td>${list.birth}</td>
			<td>${list.website}</td>
			<td>${list.employee}</td>
			<td>${list.type}</td>
			<td>${list.sales}</td>
			<td>${list.location}</td>
<!-- 			등록버튼 누를시 알림창 -->
			<td>
				<c:if test="${list.checked ==0}">
					<button>등록</button>
				</c:if>
				<c:if test="${list.checked==1 }">
					등록완료
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
