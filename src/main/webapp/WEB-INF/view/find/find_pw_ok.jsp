<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp" />
<div class="container-500 out-align-center">
	<form action="${pageContext.request.contextPath}/findmember/find_pw_ok" method="post">
		<div class="myrow in-align-center">
			<h1>변경하실 비밀번호를 입력하세요</h1>
		</div>
		
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1"> <i class="glyphicon glyphicon-lock"></i>
			</span> 
			<input type="hidden" name="email" value="${email}"> 
			<input type="password" class="form-control" name="pw"
				placeholder="비밀번호를 입력하세요" required>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock"
				id="sizing-addon1"> <i class="glyphicon glyphicon-lock"></i>
			</span> <input type="password" class="form-control" name="pw_again"
				placeholder="비밀번호를 다시 입력해주세요" required>
		</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit"
				value="비밀번호변경"> <input
				class="btn btn-primary btn-lg form-btn-full" type="button"
				value="돌아가기" >
		</div>
	</form>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp" />