<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/info.js"></script>
<div class="container-800 out-align-center">
	<div class="div-2">
		<div class="myrow content-size height-250 background-white">
			<div class="div-2 border-white">
				<div class="rest-area">
					<h3 class="myrow">${cdto.name}</h3>
				</div>
				<div class="rest-area in-align-right">
					<h4 class="myrow">
						<a href="${pageContext.request.contextPath }/member/show_personal">상세보기</a>
						<a href="${pageContext.request.contextPath }/member/edit_personal">편집</a>
					</h4>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size border-circle">
					<div class="in-align-center">
						<img id="profile-image"
								src="${pageContext.request.contextPath}/upload/${cdto.imgname}"
								width=67% height=auto>
					</div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">아이디</div>
					<div class="input-lg">${nmdto.email }</div>
					<div class="input-lg text-primary border-circle">회사명</div>
					<div class="input-lg">${nmdto.company }</div>
				</div>
			</div>
		</div>
		<div class="myrow content-size height-250 background-white">
			<div>
				<div class="div-2 border-white">
					<h3 class="myrow">상세정보</h3>
					<div class="rest-area in-align-right">
						<h4 class="myrow">
							<a href="${pageContext.request.contextPath }/member/show_detail">상세보기</a>
							<a href="${pageContext.request.contextPath }/register/register_detail">편집</a>
						</h4>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">사업지역</div>
					<div class="input-lg">서울</div>
					<div class="input-lg"></div>
					<div class="input-lg"></div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">업종</div>
					<div class="input-lg">IT</div>
					<div class="input-lg"></div>
					<div class="input-lg"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-800 out-align-center">
	<div class="container-100">
		<div class="padding">
			<div class="background-white">
				<div class="div-2 border-white">
					<h3 class="myrow">지원된 이력서</h3>
				</div>
				<div class="div-main padding">
					<div class="div-2 rest-area border-bottom-lightblue font-medium">
						<div class="container-40 in-align-center">지원직무</div>
						<div class="container-30 in-align-center">지원자</div>
						<div class="container-20 in-align-center">보기</div>
					</div>
					<!-- 여기서 부터 for문-->
					<c:forEach var="list" items="${list}">
					<div class="div-2 rest-area font-small">
						<div class="container-40 in-align-center">${list.favdivision}</div>
						<div class="container-30 in-align-center">${list.email}</div>
						<div class="container-20 in-align-center">
							<a href="${pageContext.request.contextPath}/company/check_application?no=${list.boardno}">이력서확인</a>
						</div>
					</div>
					</c:forEach>
					<!-- for문 끝-->
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>