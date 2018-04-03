<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<title>기업찾기</title>
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

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath}/js/regester_newcompany.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<script>

</script>
</head>


<body>

<input type="hidden" value="${msg}">

	<form id="fileform" action="${pageContext.request.contextPath}/register/register_newcompany" method="post" enctype="multipart/form-data">
	
		<div class="myrow content-size border-circle" align="center">
		<div style="height:auto;">
			<img style="object-fit: contain" id="profile-image"
				src="${pageContext.request.contextPath}/img/noone.jpg" width=67%
				height=auto>
		</div>
		<div class="filebox bs3-primary" style="height: 33px">
			<label for="ex_file">업로드</label> 
			<input type="file" name="file" class="file" id="ex_file" required>
			<label for="delete">사진삭제</label>
			<input type="button" id="delete">
		</div>
	</div>
	
		<div class="padding" style="width: 682px; height: 600px; ">
			<h1 class="in-align-center">기업등록</h1>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>기업명</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" id="new_company_name" name="name" type="text"
						style="height: 40px" required>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-100 div-2">
					<div class="container-30 padding-left-5">
						<h5 class="font-smallest">
							<b>산업군</b>
						</h5>
					</div>
					<div class="container-70">
						<select name="industry" class="container-100 form-control">
							<option>경영/사무</option>
							<option>영업/고객상담</option>
							<option>IT/인터넷</option>
							<option>디자인</option>
							<option>서비스</option>
							<option>전문직</option>
							<option>의료</option>
							<option>생산/제조</option>
							<option>건설</option>
							<option>유통/무역</option>
							<option selected>미디어</option>
							<option>교육</option>
							<option>특수계층/공공</option>
						</select>
					</div>
				</div>
				<div class="container-100 div-2">
					<div class="container-30 padding-left-5">
						<h5 class="font-smallest">
							<b>기업형태</b>
						</h5>
					</div>
					<div class="container-70">
						<select name="type" class="container-100 form-control">
							<option>대기업</option>
							<option>중소기업</option>
						</select>
					</div>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>사장이름</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" name="ceo" type="text"
						style="height: 40px" required>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>홈피주소</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" name="website" type="text"
						style="height: 40px" required>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>직원수</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" name="employee" type="text"
						style="height: 40px;ime-mode:disabled;" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' required>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>매출액</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" name="sales" type="text"
						style="height: 40px;ime-mode:disabled;" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' required>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>회사위치</b>
					</h5>
				</div>
				<div class="container-70">
					<input type="button" class="btn btn-primary input-lg" id = "post" value="우편번호 찾기"><br>
					<input class="form-control" name="addrloc" type="text" style="height: 40px" id="addrloc" placeholder="주소" required>
					<input class="form-control" name="addr2loc" type="text" style="height: 40px" id="addr2loc" placeholder="상세주소">
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>사업자 등록번호</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" name="regcode" type="text"
						style="height: 40px" required>
				</div>
			</div>
			<div class="div-2 padding">
				<div class="container-30 padding-left-5">
					<h5 class="font-small">
						<b>창립일</b>
					</h5>
				</div>
				<div class="container-70">
					<input class="form-control" name="birth" type="date"
						style="height: 40px" required>
				</div>
			</div>
			<div class="padding in-align-center">
				<input type="submit" id="register_company" name="register_company" class="btn btn-primary" value="기업등록">
			</div>
		</div>
	</form>
</body>

</html>