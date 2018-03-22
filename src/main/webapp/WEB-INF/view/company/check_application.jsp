<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="#" method="post">
	<div class="container-1000 out-align-center">
		<h1>"지원자 이름" 지원자</h1>
		<hr class="style-one">
		<div class="padding div-2">
			<div class="padding container-100 div-2">
				<div class="container-30">
					<img src="${pageContext.request.contextPath}/img/noone.jpg">
				</div>
				<div class="container-70 div-main">
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">영문이름</div>
						<div class="padding container-70 font-small">SeongwooKang</div>
					</div>
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">이메일</div>
						<div class="padding container-70 font-small">678493@naver.com</div>
					</div>
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">전화번호</div>
						<div class="padding container-70 font-small">010-5174-2860</div>
					</div>
					<div class="rest-area div-2">
						<div class="padding container-30 input-lg">지원분야</div>
						<div class="padding container-70 font-small">서버관리</div>
					</div>
				</div>
			</div>
			<div class="div-main container-100">
				<div class="padding container-100 div-2">
					<div class="input-lg container-30">Education</div>
					<div class="container-70">
						<textarea class="container-100 textarea" name="edustory" readonly></textarea>
					</div>
				</div>
				<div class="padding container-100 div-2">
					<div class="input-lg container-30">Certification</div>
					<div class="container-70">
						<textarea class="container-100 textarea" name="certification"
							readonly></textarea>
					</div>
				</div>
				<div class="padding container-100 div-2">
					<div class="input-lg container-30">WorkExperience</div>
					<div class="container-70">
						<textarea class="container-100 textarea" name="expstory" readonly></textarea>
					</div>
				</div>
			</div>
		</div>
		<hr class="style-one">
		<div>
			<div class="input-lg">1.자기소개</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="introduce"
					readonly></textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">2.성장배경</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="yourlife"
					readonly></textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">3.본 회사를 지원한 이유</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="reason"
					readonly></textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">4.앞으로의 목표</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="yourgoal"
					readonly></textarea>
			</div>
		</div>
		<div class="myrow in-align-center">
			<input type="submit" class="button shape-circle" value="합격">
			<input type="button" class="button shape-circle" value="불합격">
			<input type="button" class="button shape-circle" value="뒤로가기">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>