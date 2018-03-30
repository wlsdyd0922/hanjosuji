<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath }/js/company.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/blockbutton.css">

<div class = "div-2">
    <div class="button_base b07_3d_double_roll container-100" id = "all">
        <div>전체 회사 목록</div>
        <div>전체 회사 목록</div>
        <div>전체 회사 목록</div>
        <div>전체 회사 목록</div>
    </div>
        <div class="button_base b07_3d_double_roll container-100" id = "nokcomp">
        <div>미승인 회사목록</div>
        <div>미승인 회사목록</div>
        <div>미승인 회사목록</div>
        <div>미승인 회사목록</div>
    </div>
        <div class="button_base b07_3d_double_roll container-100" id = "okcomp">
        <div>승인된 회사목록</div>
        <div>승인된 회사목록</div>
        <div>승인된 회사목록</div>
        <div>승인된 회사목록</div>
    </div>
</div>

<div class="padding">
	<div id="tab" class="tab_content">
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
