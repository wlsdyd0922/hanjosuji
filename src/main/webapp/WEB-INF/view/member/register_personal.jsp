<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath }/member/register_personal" method="post">
<div class="empty-row"></div>
    <div class="container-30 out-align-center">
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-envelope"></i></span>
        <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
        <input type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
        <input type="password" class="form-control" name="password_again" placeholder="비밀번호를 다시 입력해주세요">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon glyphicons-iphone-shake" id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i></span>
        <input type="text" class="form-control" name="phone" placeholder="- 없이 입력해라">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon glyphicons-tent" id="sizing-addon1"><i class="glyphicon glyphicon-tent"></i></span>
        <input type="text" class="form-control" name="address" placeholder="기본주소">
        </div>
        <div class="myrow input-group input-group-lg">
            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-tent"></i></span>
        <input type="text" class="form-control" name="address_detail" placeholder="상세주소">
        </div>
        <div class="myrow div-2">
            <input class="btn btn-primary btn-lg form-btn-full" type="submit" value="다음단계">
            <input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기">
        </div>
    </div>
</form>    
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>