<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/search_company.js"></script>
<!-- 입력값에 따른 css 변화.js -->
<script src="${pageContext.request.contextPath}/js/sha256.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
<script src="${pageContext.request.contextPath}/js/register_personal.js"></script>
<form action="${pageContext.request.contextPath }/findmember/change_pw_personal" method="post">
	<div class="empty-row"></div>
	<input type="hidden" name="email" value="${param.email}"> 
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="password" class="form-control" name="pw" placeholder="비밀번호를 입력하세요" required>
		</div>

		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
			<i class="glyphicon glyphicon-lock"></i>
			</span> 
			<input type="password" class="form-control" name="pw_again" placeholder="비밀번호를 다시 입력해주세요" required>
		</div>

		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit" value="비밀번호 변경하기"> 
			<input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기" onclick="history.back()">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>