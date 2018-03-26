<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>

<script>
$(document).ready(function() {
	$("#all").on("click",function(){
		location.href="compacceptboard/all";
	});
	$("#nokcomp").on("click",function(){
		location.href="compacceptboard/nokcomp";
	});
	$("#okcomp").on("click",function(){
		location.href="compacceptboard/okcomp";
	});
});
</script>

<button id = "all">전체 회사 목록</button>
<button id = "nokcomp">미승인 회사목록</button>
<button id = "okcomp">승인된 회사목록</button>

<div id="tab1" class="tab_content">
	<div class="div-2 container-100 in-align-center">
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
			<tbody>
				<c:forEach var="list" items="${list0}">
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
						<td>
							<c:if test="${list.checked ==0}">
								<button>등록</button>
								<button>삭제</button>
							</c:if>
							<c:if test="${list.checked==1 }">
								등록완료
								<button>삭제</button>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="11">
						<c:if test="${pageblockstart ne 1 }">
							<a href="compacceptboard?pageno=${pageblockstart-1}">[이전]</a>
						</c:if> 
						<c:forEach var="pageNo" begin="${pageblockstart}" end="${pageblockend}" step="1">
							<a href="compacceptboard?pageno=${pageNo}"
								<c:if test="${requestScope.pageno eq pageNo}">
									style="font-weight: bold; color: red;" 
								</c:if>>
								${pageNo}
							</a>
						</c:forEach>
						<c:if test="${pagesize!=pageblockend}">
							<a href="compacceptboard?pageno=${pageblockstart+pageblocksize}">[다음]</a>
						</c:if>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
