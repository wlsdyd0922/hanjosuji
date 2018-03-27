<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath }/js/company.js"></script>

<script>
$(document).ready(function() {
	requestList(2, 1);
	$("#all").on("click",function(){
		requestList(2, 1);
	});
	$("#nokcomp").on("click",function(){
		requestList(0, 1);
	});
	$("#okcomp").on("click",function(){
		requestList(1, 1);
	});
});

//부분 페이지를 가져오는 요청 함수
function requestList(type, page){
	$.ajax({
//		url:"${pageContext.request.contextPath}/admin/compacceptboard_part",
		url:"compacceptboard_part",
		dataType:"html",
		data:{type:type, pageno:page},
		success:function(result){
			console.log(result);
			$("#tab").html(result);
		}
	});
}
</script>

<button id="all">전체 회사 목록</button>
<button id="nokcomp">미승인 회사목록</button>
<button id="okcomp">승인된 회사목록</button>
<div class="padding">
	<div id="tab" class="tab_content">
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
