<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
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
        <div class="myrow">
            <div class="form-group">
                <select name="favCom" class="form-control input-lg" >
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
                    <option>미디어</option>
                    <option>교육</option>
                    <option>특수계층/공공</option>
                </select>
            </div>
            <div class="form-group">
                <select name="favCom" class="form-control input-lg" >
                    <option>서울</option>
                    <option>경기</option>
                    <option>인천</option>
                    <option>부산</option>
                    <option>대구</option>
                    <option>광주</option>
                    <option>대전</option>
                    <option>울산</option>
                    <option>세종</option>
                    <option>강원</option>
                    <option>경남</option>
                    <option>경북</option>
                    <option>전남</option>
                    <option>전북</option>
                    <option>충남</option>
                    <option>충북</option>
                    <option>제주</option>
                    <option>전국</option>
                </select>
            </div>
        </div>
        <div class="myrow div-2">
            <div class="form-input div-ratio2" >
                현재 본인의 상태를 체크해 주세요.
            </div>
            <div class="form-input div-ratio1 in-align-right">
                <label class="radio-inline">
                  <input type="radio" name="workingstatus" value="new"> 신입
                </label>
                <label class="radio-inline">
                  <input type="radio" name="workingstatus" value="experienced"> 경력
                </label>
            </div>
        </div>
        <div class="myrow div-2">
            <input class="btn btn-primary btn-lg form-btn-full" type="submit" value="가입">
            <input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기">
        </div>
    </div>
</body>
</html>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>