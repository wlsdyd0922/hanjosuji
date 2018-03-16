<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath }/login" method="post">
	<div class="empty-row"></div>
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"></span> 
			<input type="text" class="form-control font-medium" name="email" placeholder="아이디를 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"></span> 
			<input type="password" class="form-control font-medium" name="password" placeholder="비밀번호를 입력하세요">
		</div>
		<div class="myrow div-2">
			<div class="form-check div-ratio2">
				<input type="checkbox" class="form-check-input" id="rememberId">
				<label class="form-check-label font-medium" for="rememberId">아이디기억하기</label>
			</div>
			<div class="in-align-right container-100">
				<a href="" class="font-medium">아이디 찾기</a> 
				<a href="" class="font-medium">비밀번호 찾기</a>
			</div>
		</div>
		<div class="myrow">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit" value="로그인">
		</div>
		<hr>
		<div class="myrow">
			<input class="btn btn-primary btn-lg form-btn-full" type="button" value="회원가입">
		</div>
		<div class="myrow font-medium">&copy;WorkSpace Corp. All rights reserved.</div>
	</div>
	<div class="empty-row"></div>
	<div class="empty-row"></div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>