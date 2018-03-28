<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>

<script src="${pageContext.request.contextPath}/js/edit_Personal.js"></script>

<form action="edit_personal" method="post">
	<div class="empty-row"></div>
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-envelope"></i>
			</span>
			<input type="text" class="form-control" name="email" value="${nmdto.email}" readonly>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="password" class="form-control" name="pw" placeholder="변경한다면 비밀번호를 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="password" class="form-control" name="pw_again" placeholder="비밀번호를 다시 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake" id="sizing-addon1">
				<i class="glyphicon glyphicon-phone-alt"></i>
			</span>
			<input type="text" class="form-control" name="phone" value="${nmdto.phone}">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-tent" id="sizing-addon1">
				<i class="glyphicon glyphicon-tent"></i>
			</span>
			<input type="text" class="form-control" name="addr" value="${nmdto.addr}">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-tent"></i>
			</span>
			<input type="text" class="form-control" name="addr2" value="${nmdto.addr2 }">
		</div>
		
		<div class="myrow">
			<h4>비밀번호 확인 질문을 선택하세요.</h4>
			<div class="form-group">
				<select name="pwquiz" class="form-control input-lg">
					<option value="1" <c:if test="${nmdto.pwquiz eq 1}">selected</c:if>>당신이 졸업한 초등학교는?</option>
					<option value="2" <c:if test="${nmdto.pwquiz eq 2}">selected</c:if>>어머니 성함은?</option>
					<option value="3" <c:if test="${nmdto.pwquiz eq 3}">selected</c:if>>당신의 애완동물 이름은?</option>
				</select>
			</div>
		</div>
		<div class="myrow">
			<h4>회원 등급</h4>
			<div class="form-group">
				<select id="grade"name="grade" class="form-control input-lg">
					<option value="일반" <c:if test="${grade eq '일반'}">selected="selected"</c:if>>일반회원</option>
					<option value="기업" <c:if test="${grade eq '기업'}">selected="selected"</c:if>>기업회원</option>
					<option value="관리자" <c:if test="${grade eq '관리자'}">selected="selected"</c:if>>관리자</option>
				</select>
			</div>
		</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit" value="정보수정">
			<input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기"
				onclick="location.href='javascript:history.back()'">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>