<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/member/edit_resume" method="post">
	<div class="container-1000 out-align-center">
		<h1>이력서 등록</h1>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
		<div class="padding container-30">
			<div class="input-lg div-2">
				<input type="hidden" name="title" class = "form-input-full" value= "${rdto.title}">
			</div>
			<div class="input-lg div-2">
				<div class="container-30">조회수</div>
				<input type="text" name="count" class = "form-input-full" value="${rdto.count}" readonly>
			</div>
		</div>
		<div class="padding container-70">
			<div class="input-lg in-align-right">
			이메일
				<input type="text" name="email" value="${sessionScope.accept}">
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
			<textarea class="container-100 height-100 textarea" name="favdivision" readonly>${rdto.favdivision}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Favorite Region</div>
			<textarea class="container-100 height-100 textarea" name="favregion" readonly>${rdto.favregion}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Working Status</div>
			<textarea class="container-100 height-100 textarea" name="workingstatus" readonly>${rdto.workingstatusKor() }</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Career</div>
			<textarea class="container-100 height-100 textarea" name="career">${rdto.career}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Education</div>
			<textarea class="container-100 height-100 textarea" name="edu" readonly>${rdto.edu}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Salary</div>
			<textarea class="container-100 height-100 textarea" name="salary">${rdto.salary}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Porfolio</div>
			<textarea class="container-100 height-100 textarea" name="portfolio">${rdto.portfolio}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Certification</div>
			<textarea class="container-100 height-100 textarea"
				name="certi">${rdto.certi}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Prize</div>
			<textarea class="container-100 height-100 textarea"
				name="prize">${rdto.prize}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow in-align-center">
			<input type="submit" class="button shape-circle" value="수정하기">
			<input type="button" class="button shape-circle" value="뒤로가기"
				onclick="location.href='javascript:history.back()'">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>