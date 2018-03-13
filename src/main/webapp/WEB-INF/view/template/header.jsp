<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>workspace</title> 
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
            <img src="${pageContext.request.contextPath }/img/logo.png">
        </header>
        <!-- 메뉴 영역 -->
        <nav class="menu input-lg">
            <a href="${pageContext.request.contextPath }" class = "left"><i class="glyphicon glyphicon-home"></i></a>
            <c:choose>
            <c:when test="${loginFlag }">
            <a href="$/member/information" class = "left"><i class="glyphicon glyphicon-user"></i></a>
            <a href="$/member/edit" class = "left"><i class="glyphicon glyphicon-cog"></i></a>
            <a href="$/member/exit" class = "left">회원탈퇴</a>
            <a href="$/board/list" class = "left"><a class="glyphicon glyphicon-th-list"></a></a>
            <a href="$/member/logout" class = "right">LOGOUT</a>
            </c:when>
            <c:otherwise>
            <a href = "$/board/list" class="left"><a class="glyphicon glyphicon-th-list"></a></a>
            <a href = "$/login" class="right">로그인</a>
            <a href = "$/register" class="rright">회원가입</a>
            </c:otherwise>
            </c:choose>
            <c:if test="${accept eq 'admin' }">
            [<a href = "$/admin/memberlist" class="left"><i class="glyphicon glyphicon-list-alt"></i></a>
            <a href = "$/admin/membersearch" class="left"><i class="glyphicon glyphicon-search"></i></a>]
            </c:if>
        </nav>
        <!-- 컨테이너 영역 -->
        <section>