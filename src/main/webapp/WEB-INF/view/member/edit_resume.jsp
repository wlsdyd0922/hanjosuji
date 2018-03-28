<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/member/edit_resume" method="post">
	<div class="container-1000 out-align-center">
		<h1>이력서 등록</h1>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="myrow">
				<div class="input-lg">이름</div>
				<div class="input-lg">
					<input type="text" name="korname" value="${nmdto.name }" readonly>
				</div>
			</div>
			<div class="myrow rest-area">
				<div class="input-lg in-align-right">
					<input type="text" name="email" placeholder="이메일을 입력해 주세요">
				</div>
				<div class="input-lg in-align-right">
					<input type="text" name="phone" placeholder="전화번호를입력해 주세요">
				</div>
			</div>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Title</div>
			<textarea class="container-100 height-100 textarea" name="title">${rdto.title}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Favorite Division</div>
			<textarea class="container-100 height-100 textarea" name="favdivision">${rdto.favdivision}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Favorite Region</div>
			<textarea class="container-100 height-100 textarea" name="favregion">${rdto.favregion}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Working Status</div>
			<textarea class="container-100 height-100 textarea" name="workingstatus">${rdto.workingstatus}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Career</div>
			<textarea class="container-100 height-100 textarea" name="career">${rdto.career}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Education</div>
			<textarea class="container-100 height-100 textarea" name="edu">${rdto.edu}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Salary</div>
			<textarea class="container-100 height-100 textarea" name="salary">${rdto.salary}</textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Promotion</div>
			<textarea class="container-100 height-100 textarea" name="pr">${rdto.pr}</textarea>
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