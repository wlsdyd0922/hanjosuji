<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!-- 입력값에 따른 css 변화.js -->
<script src="${pageContext.request.contextPath}/js/sha256.js"></script>
<form action="${pageContext.request.contextPath }/findmember/find_pw_personal" method="post">
	<div class="empty-row"></div>
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-envelope"></i></span> <input type="text"
				class="form-control" name="email" placeholder="아이디를 입력하세요" required>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-envelope"></i></span> <input type="text"
				class="form-control" name="name" placeholder="이름을 입력하세요" required>
		</div>

		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake"
				id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i></span>
			<input type="text" class="form-control" name="phone"
				placeholder="- 없이 입력하세요" required>
		</div>
		<div class="myrow">
			<h4>비밀번호 확인 질문을 선택하세요.</h4>
			<div class="form-group">
				<select name="pwquiz" class="form-control input-lg">
					<option value="1">당신이 졸업한 초등학교는?</option>
					<option value="2">어머니 성함은?</option>
					<option value="3">당신의 애완동물 이름은?</option>
				</select>
			</div>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span> 
			<input type="text" class="form-control" name="pwans" placeholder="비밀번호 확인 답을 입력해 주세요" required>
			</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit"
				value="비밀번호찾기"> <input
				class="btn btn-primary btn-lg form-btn-full" type="button"
				value="돌아가기">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>