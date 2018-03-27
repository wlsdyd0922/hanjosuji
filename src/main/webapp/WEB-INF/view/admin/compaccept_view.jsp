<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table font-medium">
	<thead>
		<tr>
			<th width = 3%>번호</th>
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
	<tbody>
		<c:forEach var="company" items="${list}">
			<tr>
				<td>${company.no}</td>
				<td>${company.name}</td>
				<td>${company.industry}</td>
				<td>${company.ceo}</td>
				<td>${company.birth}</td>
				<td>${company.website}</td>
				<td>${company.employee}</td>
				<td>${company.type}</td>
				<td>${company.sales}</td>
				<td>${company.location}</td>
				<td><c:if test="${company.checked ==0}">
						<button>등록</button>
						<button>삭제</button>
					</c:if> <c:if test="${company.checked==1 }">
							등록완료
							<button>삭제</button>
					</c:if></td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="11"><c:if test="${pageblockstart ne 1 }">
					<a href="#" onclick="requestList(${param.type},${pageblockstart-1});return false;">[이전]</a>
				</c:if> <c:forEach var="pageNo" begin="${pageblockstart}"
					end="${pageblockend}" step="1">
					<a href="#" onclick="requestList(${param.type},${pageNo});return false;"
						<c:if test="${requestScope.pageno eq pageNo}">
								style="font-weight: bold; color: red;" 
							</c:if>>
						${pageNo} </a>
				</c:forEach> <c:if test="${pagesize!=pageblockend}">
				<a href="#" onclick="requestList(${param.type},${pageblockstart+pageblocksize});return false;">[다음]</a>
				</c:if></td>
		</tr>
	</tfoot>
</table>

