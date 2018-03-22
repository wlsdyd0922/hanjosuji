<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="#" method="post">
	<div class="empty-row"></div>
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-envelope"></i></span> <input type="text"
				class="form-control" name="id" value="${nmdto.email}" readonly>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock"
				id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span> <input
				type="password" class="form-control" name="pw"
				placeholder="비밀번호를 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock"
				id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span> <input
				type="password" class="form-control" name="pw_again"
				placeholder="비밀번호를 다시 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake"
				id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i></span>
			<input type="text" class="form-control" name="phone"
				value="${nmdto.phone }">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-tent" id="sizing-addon1"><i
				class="glyphicon glyphicon-tent"></i></span> <input type="text"
				class="form-control" name="address" value="${nmdto.addr }구">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-tent"></i></span> <input type="text"
				class="form-control" name="address_detail" value="${nmdto.addr2 }"
				>
		</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit"
				value="정보수정">
			<input class="btn btn-primary btn-lg form-btn-full" type="button"
				value="돌아가기"
				onclick="location.href='javascript:history.back()'">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>