<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center">
	<h1>이력서</h1>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="padding container-30">
			<div class="input-lg div-2">
				<div class="container-30">제목</div>
				<input type="text" name="title" class = "form-input-full" value= "${rdto.title}" readonly>
			</div>
			<div class="input-lg div-2">
				<div class="container-30">조회수</div>
				<input type="text" name="count" class = "form-input-full" value="${rdto.count}" readonly>
			</div>
		</div>
		<div class="padding container-70">
			<div class="input-lg in-align-right">
			이메일
				<input type="text" name="email" value="${sessionScope.accept}" readonly>
			</div>
			<div class="input-lg in-align-right">
			신청한 공고
				<input type="text" name="boardno" value="${rdto.boardno	}" readonly>
			</div>
		</div>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Favorite Division</div>
		<textarea class="container-100 height-100 textarea" name="favdivision"
			readonly>${rdto.favdivision}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Favorite Region</div>
		<textarea class="container-100 height-100 textarea" name="favregion"
			readonly>${rdto.favregion}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Working Status</div>
		<textarea class="container-100 height-100 textarea" name="workingstatus"
			readonly>${rdto.workingstatusKor() }</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Career</div>
		<textarea class="container-100 height-100 textarea" name="career"
			readonly>${rdto.career}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Education</div>
		<textarea class="container-100 height-100 textarea" name="edu"
			readonly>${rdto.edu}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Salary</div>
		<textarea class="container-100 height-100 textarea" name="salary"
			readonly>${rdto.salary}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Portfolio</div>
		<textarea class="container-100 height-100 textarea" name="portfolio"
			readonly>${rdto.portfolio}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Certification</div>
		<textarea class="container-100 height-100 textarea"
			name="certi" readonly>${rdto.certi}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Prize</div>
		<textarea class="container-100 height-100 textarea" name="prize"
			readonly>${rdto.prize}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow in-align-center">
		<input type="button" class="button shape-circle" value="수정하기"
			onclick="location.href='${pageContext.request.contextPath }/member/edit_resume'">
		<input type="button" class="button shape-circle" value="뒤로가기"
			onclick="location.href='${pageContext.request.contextPath }/member/information'">
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>