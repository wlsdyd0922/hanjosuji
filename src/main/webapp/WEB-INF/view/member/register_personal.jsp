<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!-- 입력값에 따른 css 변화.js -->
            <script src="${pageContext.request.contextPath}/js/register_personal.js"></script>
            <form action="${pageContext.request.contextPath }/member/register_personal" method="post">
                <div class="empty-row"></div>
                <div class="container-40 out-align-center">
                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input type="text" class="form-control" name="email" placeholder="아이디를 입력하세요" required>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input type="text" class="form-control" name="name" placeholder="이름을 입력하세요" required>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user"></i></span>
                        <div class="form-control">
                            <input type="radio" name="gender" id="male" value="남자" required>
                            <label for="male">남자</label>
                            <input type="radio" name="gender" id="female" value="여자" required>
                            <label for="female">여자</label>
                        </div>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요" required>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" class="form-control" name="password_again" placeholder="비밀번호를 다시 입력해주세요" required>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon glyphicons-iphone-shake" id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i></span>
                        <input type="text" class="form-control" name="phone" placeholder="- 없이 입력하세요" required>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <h4>생년월일을 선택하세요</h4>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-plus"></i></span>
                        <input id="date" class="form-control" type="date" name="birth" required>
                    </div>

                    <div class="myrow">
                        <h4>비밀번호 확인 질문을 선택하세요.</h4>
                        <div class="form-group">
                            <select name="pwQuiz" class="form-control input-lg">
                    <option>당신이 졸업한 초등학교는?</option>
                    <option>어머니 성함은?</option>
                    <option>당신의 애완동물 이름은?</option>
                </select>
                        </div>
                    </div>

                    <div class="myrow input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="text" class="form-control" name="pwAns" placeholder="비밀번호 확인 답을 입력해 주세요" required>
                    </div>

                    <div class="myrow div-2">
                        <input class="btn btn-primary btn-lg form-btn-full" type="submit" value="가입완료">
                        <input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기">
                    </div>
                </div>
            </form>    
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>