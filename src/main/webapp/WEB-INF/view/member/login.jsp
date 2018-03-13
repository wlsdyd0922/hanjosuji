<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login</title>  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <!-- bootstrap을 사용하기 위한 링크 설정 -->

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
    <!--<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
        
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <div class="empty-row"></div>
    <div class="container-30 out-align-center">
        <div class="myrow in-align-center">
            <img src="${pageContext.request.contextPath}/img/logo.png" width="70%">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon" id="sizing-addon1"></span>
        <input type="text" class="form-control font-medium" name="id" placeholder="아이디를 입력하세요">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon" id="sizing-addon1"></span>
        <input type="password" class="form-control font-medium" name="password" placeholder="비밀번호를 입력하세요">
        </div>
        <div class="myrow div-2">
            <div class="form-check div-ratio2">
                <input type="checkbox" class="form-check-input" id="rememberId">
                <label class="form-check-label font-medium" for="rememberId">아이디 기억하기</label>
            </div>
            <div class="in-align-right container-100">
                <a href="" class="font-medium">아이디 찾기</a>
                <a href="" class="font-medium">비밀번호 찾기</a>
            </div>
        </div>
        <div class="myrow">
            <input class="btn btn-primary btn-lg form-btn-full" type="submit" value="로그인">
        </div>
        <hr>
        <div class="myrow">
            <input class="btn btn-primary btn-lg form-btn-full" type="button" value="회원가입">
        </div>
        <div class="myrow font-medium">
            &copy;WorkSpace Corp. All rights reserved.
        </div>
    </div>
    <div class="empty-row"></div>
    <div class="empty-row"></div>
</body>
</html>