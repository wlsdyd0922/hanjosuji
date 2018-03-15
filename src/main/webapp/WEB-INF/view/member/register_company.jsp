<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form
	action="${pageContext.request.contextPath }/member/register_company"
	method="post">
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
                    <input type="text" class="form-control" name="phone" placeholder="- 없이 입력하세요">
                </div>
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon glyphicons-tent" id="sizing-addon1"><i class="glyphicon glyphicon-tent"></i></span>
                    <input type="text" class="form-control" name="companyname" placeholder="회사명을 입력해주세요">
                </div>
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="ceoname" placeholder="관리자 성함을 입력해주세요">
                </div>
                <div class="myrow input-group input-group-lg">
                    <h4>설립일을 선택하세요</h4>
                </div>
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-plus"></i></span>
                    <input id="someDate" class="form-control" type="date">
                </div>
                <div class="myrow">
                    <h4>비밀번호 확인 질문을 선택하세요.</h4>
                    <div class="form-group">
                        <select name="check_PW" class="form-control input-lg">
                    <option>당신이 졸업한 초등학교는?</option>
                    <option>어머니 성함은?</option>
                    <option>당신의 애완동물 이름은?</option>
                </select>
                    </div>
                </div>
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="text" class="form-control" name="answer_PW" placeholder="비밀번호 확인 답을 입력해 주세요">
                </div>
                <div class="myrow">
                    <h4>당사의 산업군을 선택하세요</h4>
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
                    <h4>사업지역을 선택하세요</h4>
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
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="companypeople" placeholder="근무인원을 입력하세요">
                </div>
                <div class="myrow input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-bitcoin"></i></span>
                    <input type="text" class="form-control" name="earning" placeholder="매출액을 입력하세요">
                </div>
                <div class="myrow div-2">
                    <input class="btn btn-primary btn-lg form-btn-full" type="submit" value="가입완료">
                    <input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기">
                </div>
            </div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>