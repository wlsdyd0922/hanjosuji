<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="${pageContext.request.contextPath}/js/star.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.form.min.js"></script>
<script src="${pageContext.request.contextPath}/js/find_company.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>

<body>
	<div style="width: 400px; height: 400px;">
        <div id="company_search_result"> 
            <input id="company_input" type="text" placeholder="원하시는 기업명을 입력해 주세요">
            <button id="search_button">검색</button>
        </div>
        <div id = "show_status" class="padding container-100 in-align-center" style="height: 100px;">
            <label class="font-medium">존재하지 않은 기업입니다.</label><br>
            <button class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/register/register_newcompany'">기업등록</button>
        </div>
    </div>
</body>

</html>