<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="loginFlag" value="${not empty accept}"></c:set>
<html>
<head>
<title>MemberInformation</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css">
<!-- bootstrap을 사용하기 위한 링크 설정 -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath}/js/star.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.form.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>

<body>
	<!-- 1페이지 영역-->
	<main> <!-- 상단 영역 --> <header class="font-big in-align-center">
		<a href="${pageContext.request.contextPath}/"><img
			src="${pageContext.request.contextPath}/img/logo.png"></a>
	</header> <!-- 메뉴 영역 -->
	<nav class="menu input-lg border">
		<div class="div-2 container-1000 out-align-center">
			<div class="container-70">
				<a href="${pageContext.request.contextPath }" class="left"><i
					class="glyphicon glyphicon-home">MAIN</i></a>
				<c:choose>
					<c:when test="${loginFlag}">
						<!-- 일반 사용자 information -->
						<a href="${pageContext.request.contextPath }/member/information" class="left">
							<i class="glyphicon glyphicon-user">INFO</i>
						</a>
					</c:when>
					<c:when test="${compFlag}">
						<!-- 기업 사용자 information -->
						<a href="${pageContext.request.contextPath }/member/company_information" class="left">
							<i class="glyphicon glyphicon-user">INFO</i>
						</a>
					</c:when>
						
					<c:otherwise>
					</c:otherwise>
					
				</c:choose>
				<c:if test="${accept eq 'admin' }">

				</c:if>
				<a href="${pageContext.request.contextPath }/company/companylist" class="left"><i class="glyphicon glyphicon-search">기업채용정보</i></a>
			</div>
			<div class="container-30 in-align-right">
				<c:choose>
					<c:when test="${loginFlag }">
						<img src="${pageContext.request.contextPath }/img/noone.jpg"
							class="height-100"> 유저 : ${sessionScope.accept}
                                <a
							href="${pageContext.request.contextPath }/member/logout"
							class="rright">로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath }/login" class="right">로그인</a>
						<a
							href="${pageContext.request.contextPath }/register/register_choose"
							class="rright">회원가입</a>
					</c:otherwise>
				</c:choose>
				<c:if test="${accept eq 'admin' }">

				</c:if>
			</div>
		</div>
	</nav>
	<!-- 컨테이너 영역 -->
	<section>