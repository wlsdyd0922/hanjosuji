<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="#" method="post">
	<div class="container-1000 out-align-center">
		<h1>이력서 등록</h1>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="myrow">
				<div class="input-lg">
					<input type="text" name="korname" placeholder="이름을 입력해 주세요">
				</div>
				<div class="input-lg">
					<input type="text" name="engname" placeholder="영문이름을 입력해 주세요">
				</div>
			</div>
			<div class="myrow rest-area">
				<div class="input-lg in-align-right">
					<input type="text" name="email" placeholder="이메일을 입력해 주세요">
				</div>
				<div class="input-lg in-align-right">
					<input type="text" name="phone" placeholder="전화번호을 입력해 주세요">
				</div>
			</div>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Education</div>
			<textarea class="container-100 height-100 textarea" name="edustory"></textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">Certification</div>
			<textarea class="container-100 height-100 textarea"
				name="certification"></textarea>
		</div>
		<hr class="style-one">
		<div class="myrow div-2" style="height: 116px;">
			<div class="input-lg container-20">WorkExperience</div>
			<textarea class="container-100 height-100 textarea" name="expstory"></textarea>
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