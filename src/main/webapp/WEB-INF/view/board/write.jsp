<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/board/write"
	method="post">
	<div class="in-align-center">
        <h1>채용 공고 작성</h1>
    </div>
    <div class="empty-row"></div>
	<div class="container-1000 out-align-center">
		<div class="div-2">
			<div class="container-20">제목</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="title">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">회사명</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="company"> <select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">고용인원</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="count" placeholder="숫자로 입력해 주세요">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">급여</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="salary"
					placeholder="예) 3000만원 / 회사내규">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">근무시간</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="working">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">기타내용</div>
			<div class="container-80">
				<textarea class="textarea container-100 height-100" name="contents"></textarea>
			</div>
		</div>
		<div class="container-100 in-align-center">
			<input type="button" value="돌아가기" onclick="#"> 
			<input type="submit" value="작성하기">
		</div>
	</div>
</form>


<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>