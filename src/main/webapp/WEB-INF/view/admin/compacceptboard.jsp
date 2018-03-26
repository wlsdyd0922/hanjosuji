<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath }/js/company.js"></script>
<style>
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:82px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
</style>

<script>
$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").click(function () {
        $("ul.tabs li").removeClass("active").css("color", "#333");
        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active").css("color", "darkred");
        $(".tab_content").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
});
</script>

<script>
$(document).ready(function(){
	$("ul>li").on("click",function(){
		console.log("클릭");
		
	});
});
</script>


<div id="container">
	<ul class="tabs">
		<li class="active font-small" rel="tab1">미승인 회사목록</li>
		<li class="font-small" rel="tab2">승인된 회사목록</li>
	</ul>
</div>

<div class="tab_container">
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
<!-- 	company 데이터 수에 따라 반복문 -->
<!-- 	미등록된 회사만보는 목록 만들기 -->
<!-- 	검색 -->
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
	<!-- 			등록버튼 누를시 알림창 -->
				<td>
					<c:if test="${list.checked ==0}">
					<button>등록</button>
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


<div id="tab2" class="tab_content">
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
<!-- 	company 데이터 수에 따라 반복문 -->
<!-- 	미등록된 회사만보는 목록 만들기 -->
<!-- 	검색 -->
	<tbody>
		<c:forEach var="list" items="${list1}">
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
</div>


<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
