<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form
	action="${pageContext.request.contextPath }/member/find_id_company"
	method="post">
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-tent" id="sizing-addon1"><i
				class="glyphicon glyphicon-tent"></i></span> <input type="text"
				class="form-control" name="companyname" placeholder="회사명을 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-user"></i></span> <input type="text"
				class="form-control" name="ceoname" placeholder="관리자 성함을 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake"
				id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i></span>
			<input type="text" class="form-control" name="phone"
				placeholder="- 없이 입력하세요">
		</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit"
				value="아이디찾기"> <input
				class="btn btn-primary btn-lg form-btn-full" type="button"
				value="돌아가기">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>