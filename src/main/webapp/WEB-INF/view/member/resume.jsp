<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center">
	<h1>이력서</h1>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="myrow">
			<div class="input-lg">
				<input type="text" name="title" placeholder="제목" readonly>${rdto.title}
			</div>
			<div class="input-lg">
				<input type="text" name="engname" placeholder="조회수"${rdto.count}
					readonly>
			</div>
		</div>
		<div class="myrow rest-area">
			<div class="input-lg in-align-right">
				<input type="text" name="email" placeholder="이메일을 입력해 주세요" readonly>${rdto.email}
			</div>
			<div class="input-lg in-align-right">
				<input type="text" name="phone" placeholder="신청한 공고" readonly>${rdto.boardno	}
			</div>
		</div>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Favorite Division</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.favdivision}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Favorite Region</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.favregion}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Working Status</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.workingstatus}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Career</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.career}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Education</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.edu}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Salary</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.salary}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Public Relations</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.pr}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Portfolio</div>
		<textarea class="container-100 height-100 textarea" name="edustory"
			readonly>${rdto.portfolio}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Certification</div>
		<textarea class="container-100 height-100 textarea"
			name="certification" readonly>${rdto.certi}</textarea>
	</div>
	<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">Prize</div>
		<textarea class="container-100 height-100 textarea" name="expstory"
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