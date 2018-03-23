<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script>
$(function(){
		$('#grade').prop('outerHTML', $('#grade').prop('outerHTML')+$('#grade option:selected').text());
		$('#grade').hide();
});
</script>


<h3>email:${nmdto.email }</h3>
<h3>name:${ nmdto.name}</h3>
<h3>gender:${ nmdto.gender}</h3>
<h3>phone:${ nmdto.phone}</h3>
<h3>addr:${nmdto.addr }</h3>
<h3>addr:${nmdto.addr2 }</h3>
<h3>pwquiz:${ nmdto.pwquiz}</h3>
<h3>grade:${sessionScope.grade}</h3>
<h3>company:${ nmdto.company}</h3>

<form action="#" method="post">
	<div class="empty-row"></div>
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-envelope"></i>
			</span>
			<input type="text" class="form-control" name="id" value="${nmdto.email}" readonly>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="password" class="form-control" name="pw" placeholder="비밀번호를 입력하세요">
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
			<input type="text" class="form-control" name="phone" value="${nmdto.phone }">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-tent" id="sizing-addon1">
				<i class="glyphicon glyphicon-tent"></i>
			</span>
			<input type="text" class="form-control" name="address" value="${nmdto.addr }구">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-tent"></i>
			</span>
			<input type="text" class="form-control" name="address_detail" value="${nmdto.addr2 }">
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