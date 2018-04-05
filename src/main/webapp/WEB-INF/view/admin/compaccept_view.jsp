<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="#" onsubmit="requestList(${param.type},${pageNo});return false;" method="get">
	<select name="sort">
		<option value = "name" <c:if test="${sort eq 'name'}">selected</c:if>>회사명</option>
		<option value = "ceo" <c:if test="${sort eq 'ceo'}">selected</c:if>>대표자명</option>
	</select>
	<input name = "search" type="search" <c:if test="${not empty search}">value="${search}"</c:if> placeholder="검색어 입력">
	<input type="submit" value="검색">
</form>

<table class = "table">
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
				<td>${company.addrloc} ${company.addr2loc}</td>
				<td>
				<c:if test="${company.checked==0}">
					<button class="compaccept" onclick="compaccept('${company.no}','${param.type}','${param.pageno}')">등록</button>
				</c:if>
				<c:if test="${company.checked==1}">
					등록완료
				</c:if>
				<button class = "compdelete" onclick="compdelete('${company.no}','${param.type}','${param.pageno}')">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="11"><c:if test="${adto.pageblockstart ne 1 }">
					<a href="#"
						onclick="requestList(${param.type},${adto.pageblockstart-1},${sort },${search});return false;">[이전]</a>
				</c:if> <c:forEach var="pageNo" begin="${adto.pageblockstart}"
					end="${adto.pageblockend}" step="1">
					<a href="#"
						onclick="requestList(${param.type},${pageNo},${sort },${search});return false;"
						<c:if test="${adto.pageno eq pageNo}">
								style="font-weight: bold; color: red;" 
							</c:if>>
						${pageNo} </a>
				</c:forEach> <c:if test="${adto.pagesize!=adto.pageblockend}">
					<a href="#"
						onclick="requestList(${param.type},${adto.pageblockstart+adto.pageblocksize},${sort },${search});return false;">[다음]</a>
				</c:if>
			</td>
		</tr>
	</tfoot>
</table>

