<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
	<div class="empty-row"></div>
	<div class="in-align-right">
		<a href="member/login">로그인</a> <a href="member/register_choose">회원가입</a>
	</div>
	<form action="#" method="post">
		<div class="container-60 out-align-center">
			<div class="myrow in-align-center" style="height: 200px;">검색 정보
				입력</div>
			<div class="myrow input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요">
				<span class="input-group-btn"> <input type="submit"
					class="btn btn-secondary" value="검색">
				</span>
			</div>
		</div>
	</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>

