<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath }/member/register_detail" method="post">
    <div class="container-30 out-align-center">
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-text-size"></i></span>
                    <input type="text" class="form-control" name="school" placeholder="졸업한 학교를 입력하세요">
                </div>
                <div class="myrow">
                    <div class="form-group">
                        <select name="favCom" class="form-control input-lg">
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
                        <select name="favCom" class="form-control input-lg">
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
                    <div class="form-input div-ratio2">
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
                <div class="myrow">
                    <div class="form-group">
                        <label for="comment"><h4>수상경력</h4></label>
                        <textarea class="form-control textarea" rows="2" id="prize"></textarea>
                    </div>
                </div>
                <div class="myrow">
                    <div class="form-group">
                        <label for="comment"><h4>자격증</h4></label>
                        <textarea class="form-control textarea" rows="2" id="certification"></textarea>
                    </div>
                </div>
                <div class="myrow">
                    <div class="form-group">
                        <label for="comment"><h4>포트폴리오</h4></label>
                        <textarea class="form-control textarea" rows="2" id="portfolio"></textarea>
                    </div>
                </div>
                <div class="myrow div-2">
                    <input class="btn btn-primary btn-lg form-btn-full" type="submit" value="가입">
                    <input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기">
                </div>
            </div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>