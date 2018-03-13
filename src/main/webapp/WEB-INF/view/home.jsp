<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>WorkSpace</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css">
<!-- bootstrap을 사용하기 위한 링크 설정 -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="empty-row"></div>
	<div class="in-align-right">
		<a href="member/login">로그인</a> <a href="member/register_personal">회원가입</a>
	</div>
	<form action="#" method="post">
		<div class="container-60 out-align-center">
			<div class="myrow in-align-center out-align-center"
				style="height: 200px;">
				<a href="/"> <img
					src="${pageContext.request.contextPath}/img/logo.png"
					class="container-70">
				</a>
			</div>
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
</body>
</html>
