<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="#" method="post">
	<div class="container-1000 out-align-center">
		<h1>자기소개서 등록</h1>
		<hr class="style-one">
		<div>
			<div class="input-lg">1.자기소개</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="introduce"></textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">2.성장배경</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="yourlife"></textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">3.본 회사를 지원한 이유</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="reason"></textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">4.앞으로의 목표</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="yourgoal"></textarea>
			</div>
		</div>
		<div class="myrow in-align-center">
			<input type="submit" class="button shape-circle" value="등록하기">
			<input type="button" class="button shape-circle" value="뒤로가기"
			onclick="location.href='${pageContext.request.contextPath }/member/information'">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>