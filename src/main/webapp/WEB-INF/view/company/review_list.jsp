<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp" />
<div class="container-50 out-align-center">
	<div class="in-align-left">
		<h3>${rdto.company}</h3>
		<h5>${rdto.type}</h5>
		<h5>★${rdto.grade}</h5>
	</div>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/company/information">기업정보</a>
			</div>
			<div class="navbar-collapse collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav">
					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/company/review_list">기업리뷰</a>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/company/review">기업리뷰작성</a></li>
				</ul>
			</div>
			<div class="myrow div-2 container-500 in-align-center">
				<div class="in-align-left container-50">

					<h1>기업리뷰</h1>
						기업명
						<div class="input-lg text-primary">${rdto.company}</div>
						현상태
						<div class="input-lg text-primary">${rdto.status}</div>
						직종
						<div class="input-lg text-primary">${rdto.type}</div>
						세부직종
						<div class="input-lg text-primary">${rdto.typedetail}</div>
						총경력
						<div class="input-lg text-primary">${rdto.career}</div>
						근무지역
						<div class="input-lg text-primary">${rdto.location}</div>
						기업평점
						<div class="input-lg text-primary">
						${rdto.grade}
						
						</div>
						기업한줄평
						<div class="input-lg text-primary">${rdto.onecomment}</div>
						경영진에게바라는점
						<div class="input-lg text-primary">${rdto.hopecomment}</div>
						복지및급여
						<div class="input-lg text-primary">${rdto.welfare}</div>
						업무와삶의균형
						<div class="input-lg text-primary">${rdto.balance}</div>
						경영진
						<div class="input-lg text-primary">${rdto.executive}</div>
						추천하겠니?
						<div class="input-lg text-primary">${rdto.recommend}</div>
					
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/view/template/footer.jsp" />