<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/company/check_application" method="post">
	<div class="container-1000 out-align-center">
		<h1>"${nmdto.name}" 지원자</h1>
		
		<hr class="style-one">
		<div class="padding div-2">
			<div class="padding container-100 div-2">
				<div class="container-30">
					<c:if test="${not empty nmdto.imgname }">
							<img id="profile-image"
								src="${pageContext.request.contextPath}/upload/${nmdto.imgname}"
								width=67% height=auto>
					</c:if>
					<c:if test="${empty nmdto.imgname }">
						<img style="object-fit: contain" id="profile-image"
								src="${pageContext.request.contextPath}/img/noone.jpg" width=67%
								height=auto>
						</c:if>
				</div>
				<div class="container-70 div-main">
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">이메일</div>
						<div class="padding container-70 font-small">${nmdto.email}</div>
						<input type="hidden" name="email" value="${nmdto.email }">
						<input type="hidden" name="name" value="${nmdto.name }">
						<input type="hidden" name="company" value="${param.company}">
						<input type="hidden" name="sender" value="${param.sender}">
					</div>
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">전화번호</div>
						<div class="padding container-70 font-small">${nmdto.phone}</div>
					</div>
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">지원분야</div>
						<div class="padding container-70 font-small">${rdto.favdivision}</div>
					</div>
				</div>
			</div>
			<div class="div-main container-100">
				<div class="padding container-100 div-2">
					<div class="input-lg container-30">Education</div>
					<div class="container-70">
						<textarea class="container-100 textarea" name="edustory" readonly>${rdto.edu}</textarea>
					</div>
				</div>
				<div class="padding container-100 div-2">
					<div class="input-lg container-30">Certification</div>
					<div class="container-70">
						<textarea class="container-100 textarea" name="certification"
							readonly>${rdto.certi}</textarea>
					</div>
				</div>
				<div class="padding container-100 div-2">
					<div class="input-lg container-30">WorkExperience</div>
					<div class="container-70">
						<textarea class="container-100 textarea" name="expstory" readonly>${rdto.career}</textarea>
					</div>
				</div>
			</div>
		</div>
		<hr class="style-one">
		<div>
			<div class="input-lg">1.자기소개</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="introduce"
					readonly>${rdto.pr1}</textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">2.성장배경</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="yourlife"
					readonly> ${rdto.pr2} </textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">3.본 회사를 지원한 이유</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="reason"
					readonly>${rdto.pr3}</textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">4.앞으로의 목표</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="yourgoal"
					readonly>${rdto.pr4}</textarea>
			</div>
		</div>
		<div class="myrow in-align-center">
			<input type="submit" class="button shape-circle" value="합격">
			<input type="button" class="button shape-circle" value="뒤로가기" onclick="history.back()">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>