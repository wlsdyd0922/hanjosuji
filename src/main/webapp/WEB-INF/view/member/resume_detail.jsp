<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/info.js"></script>

<div class="container-800 out-align-center">
        <h1 class="myrow">이력서 상세보기</h1>
    </div>
    <div>
        <div class="div-2 border-white">
            <h3 class="myrow">작성자</h3>
            <div class="rest-area in-align-right">
                <h3 class="myrow">
                   ${rdto.email}
                </h3>
            </div>
        </div>
    </div>
     <div>
        <div class="div-1 border-white">
            <h3 class="myrow">제목</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 7%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>

    <div>
        <div class="div-1 border-white">
            <h3 class="myrow">경력</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 7%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>
    <div>
        <div class="div-1 border-white">
            <h3 class="myrow">학력</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 7%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>
    <div>
        <div class="div-1 border-white">
            <h3 class="myrow">희망 연봉</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 7%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>
    <div>
        <div class="div-1 border-white">
            <h3 class="myrow">포트폴리오</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 29%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>
    <div>
        <div class="div-1 border-white">
            <h3 class="myrow">자격증</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 15%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>
    <div>
        <div class="div-1 border-white">
            <h3 class="myrow">수상경력</h3>
        </div>
    </div>
    <div class="div-2 rest-area" style="height: 15%;">
        <div class="myrow rest-area input-lg border-circle">${rdto.title}</div>
    </div>
    <input type="button" name="list" value="목록으로" onclick="location.href='${pageContext.request.contextPath }/member/information'">
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>