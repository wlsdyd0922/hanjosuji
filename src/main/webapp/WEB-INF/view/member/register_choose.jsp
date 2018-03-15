<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-60 out-align-center padding">
                <div class="in-align-center">
                    <h1>회원 가입</h1>
                </div>
                <div class="div-2">
                    <div style="width: 50%; height: 50%" class="myrow">
                        <div style="width: 60%; height: 60%" class="out-align-center">
                            <button class="btn btn-primary form-btn-full height-100" onclick="location.href='${pageContext.request.contextPath }/member/register_personal'">
                            <span class="glyphicon glyphicon-user" style="font-size: 50px;"></span>
                            <h1 class="in-align-center">개인회원가입</h1>
                        </button>
                        </div>
                    </div>
                    <div style="width: 50%; height: 50%" class="myrow">
                        <div style="width: 60%; height: 60%" class="out-align-center">
                            <button class="btn btn-primary form-btn-full height-100" onclick="location.href='${pageContext.request.contextPath }/member/register_company'">
                            <span class="glyphicon glyphicon-calendar" style="font-size: 50px;"></span>
                            <h1 class="in-align-center">기업회원가입</h1>
                        </button>
                        </div>
                    </div>
                </div>
            </div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>