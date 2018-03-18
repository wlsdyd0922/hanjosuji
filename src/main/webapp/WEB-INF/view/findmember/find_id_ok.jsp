<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"/>
<div class="empty-row"></div>
	<div class="container-800 out-align-center height-250">
		<div class="height-100 myrow background-white shape-circle">
			<div class="myrow in-align-center">
				<h2>회원님의 아이디는 ${email } 입니다.</h2>
			</div>
			<div class="myrow in-align-center">
				<h2>회원님의 가입일은 ${reg } 입니다.</h2>
			</div>
			<div class="empty-row"></div>
			<div class="container-60 out-align-center div-2">
				<input type="button" class="btn btn-primary btn-lg form-btn-full" value="로그인 하러 가기">
				<input type="button" class="btn btn-primary btn-lg form-btn-full" value="비밀번호 찾기">
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"/>