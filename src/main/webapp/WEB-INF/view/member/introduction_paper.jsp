<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
	<div class="container-1000 out-align-center">
		<h1>자기소개서 등록</h1>
		<hr class="style-one">
		<div>
			<div class="input-lg">1.자기소개</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="pr1" readonly>${rdto.pr1 }</textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">2.성장배경</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="pr2" readonly>${rdto.pr2 }</textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">3.본 회사를 지원한 이유</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="pr3" readonly>${rdto.pr3 }</textarea>
			</div>
		</div>
		<div>
			<div class="input-lg">4.앞으로의 목표</div>
			<div style="height: 200px;">
				<textarea class="container-100 height-100 textarea" name="pr4" readonly>${rdto.pr4 }</textarea>
			</div>
		</div>
		<div class="myrow in-align-center">
			<input type="button" class="button shape-circle" value="수정하기"
			onclick="location.href='${pageContext.request.contextPath }/member/edit_introduction_paper'">
			<input type="button" class="button shape-circle" value="뒤로가기"
			onclick="location.href='${pageContext.request.contextPath }/member/information'">
		</div>
	</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>