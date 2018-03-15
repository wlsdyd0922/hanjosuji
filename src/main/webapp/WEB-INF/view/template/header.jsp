<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>MemberInformation</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <!-- bootstrap을 사용하기 위한 링크 설정 -->

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body>
    <!-- 1페이지 영역-->
    <main>
        <!-- 상단 영역 -->
        <header class="font-big in-align-center">
            <img src="${pageContext.request.contextPath}/img/logo.png">
        </header>
        <!-- 메뉴 영역 -->
        <nav class="menu input-lg border">
            <a href = "${pageContext.request.contextPath }" class = "left"><i class="glyphicon glyphicon-home">MAIN</i></a>
            <a href = "${pageContext.request.contextPath }/member/information" class = "left"><i class="glyphicon glyphicon-user">INFO</i></a>
            <a href = "${pageContext.request.contextPath }/member/login" class="right">로그인</a>
            <a href = "${pageContext.request.contextPath }/member/register_choose" class="rright">회원가입</a>
        
        </nav>
        <!-- 컨테이너 영역 -->
        <section>