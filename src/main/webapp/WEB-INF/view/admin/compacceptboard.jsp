<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!-- 회사 등록 요청 목록 게시판 -->
<div class="container-1000 out-align-center">
<div>
	<h1>기업 등록 요청</h1>
</div>
	<table class="table">
		<thead>
			<div class="div-2 font-small">
				<div class="padding container-10"><b>번호</b></div>
				<div class="padding container-20"><b>회사</b></div>
				<div class="padding container-10"><b>분야</b></div>
				<div class="padding container-10"><b>대표자명</b></div>
				<div class="padding container-10"><b>설립일</b></div>
				<div class="padding container-20"><b>웹 사이트 주소</b></div>
				<div class="padding container-10"><b>사원 수</b></div>
				<div class="padding container-10"><b>기업형태</b></div>
				<div class="padding container-10"><b>매출</b></div>
				<div class="padding container-30"><b>회사 주소</b></div>
				<div class="padding container-10"><b>등록여부</b></div>
			</div>
		</thead>
		<!-- company 데이터 수에 따라 반복문 -->
		<!-- 미등록된 회사만보는 목록 만들기 -->
		<!-- 검색 -->
		<tbody>
			<div class="div-2 font-small">
				<div class="container-10">번호</div>
				<div class="container-20">회사</div>
				<div class="container-10">분야</div>
				<div class="container-10">대표자명</div>
				<div class="container-10">설립일</div>
				<div class="container-20">웹 사이트 주소</div>
				<div class="container-10">사원 수</div>
				<div class="container-10">기업 형태</div>
				<div class="container-10">매출</div>
				<div class="container-30">회사 주소</div>
				<!-- 등록버튼 누를시 알림창-->
				<div class="container-10">등록완료or
					<button>등록</button>
				</div>
			</div>
		</tbody>
		<tfoot>
			<div class="padding in-align-center">
				<c:if test="${current_page !=1}">
					<a href="compacceptboard?replyPage=1">[처음]</a>
				</c:if>
				<c:if test="${current_page >=2}">
					<a href="compacceptboard?replyPage=${current_page-1 }">[${current_page-1 }]</a>
				</c:if>
				<c:if test="${current_page !=0}">
                    [${current_page }]
                    </c:if>
				<c:if test="${current_page < total_page}">
					<a href="compacceptboard?replyPage=${current_page+1 }">[${current_page+1 }]</a>
				</c:if>
				<c:if test="${current_page != total_page}">
					<a href="compacceptboard?replyPage=${total_Page }">[마지막]</a>
				</c:if>
			</div>
		</tfoot>
	</table>
</div>
<!-- 진용이형 코드 -->
<!-- <table class="table font-medium">
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
	company 데이터 수에 따라 반복문
	미등록된 회사만보는 목록 만들기
	검색
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
			등록버튼 누를시 알림창
			<td>등록완료or<button>등록</button></td>
		</tr>
	</tbody>
</table> -->

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
