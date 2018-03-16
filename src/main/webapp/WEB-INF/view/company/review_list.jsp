<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp" />
<div class="container-1000 out-align-center" >
    <div class="in-align-left">
        <h1>회사명</h1>
        <h5>직군</h5>
        <h5>★평점</h5>
    </div>
    
    <ul class="nav nav-tabs">
    	<li><a href="${pageContext.request.contextPath}/company/review_info">기업정보</a></li>
    	<li class="active"><a href="${pageContext.request.contextPath}/company/review_list">기업리뷰</a></li>
    	<li><a href="${pageContext.request.contextPath}/company/review">기업리뷰작성</a></li>    
    </ul>
     <div class="myrow div-2 container-100 in-align-center">
	<div class="rest-area"></div>
		<div class="div-main container-100">
			<div class="myrow div-2" style="height: 10%; background-color: cornflowerblue">
				<img src="${pageContext.request.contextPath }/img/noone.jpg" class="height-100">
				<div class="myrow">${rdto.type}/${rdto.typedetail}</div>
				<div class="myrow">${rdto.status}</div>
				<div class="myrow">${rdto.location}</div>
				<div class="myrow">${rdto.reg}</div>
			</div>
			<div class="div-2" style="height: 90%">
				<div class="myrow container-20">
					기업평점
					<div>
						<c:choose>
							<c:when test="${rdto.grade >0 && rdto.grade <=5}">
								<c:forEach var="i" begin="1" end="${rdto.grade}" step="1">
								★
								</c:forEach>
								<c:forEach var="i" begin="${rdto.grade+1}" end="5" step="1">
								☆
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="1" end="5" step="1">
								☆
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					복지 및 급여
					<div>
							<c:choose>
							<c:when test="${rdto.welfare >0 && rdto.welfare <=5}">
								<c:forEach var="i" begin="1" end="${rdto.welfare}" step="1">
								★
								</c:forEach>
								<c:forEach var="i" begin="${rdto.welfare+1}" end="5" step="1">
								☆
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="1" end="5" step="1">
								☆
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					업무와 삶의 균형
					<div>
							<c:choose>
							<c:when test="${rdto.balance >0 && rdto.balance <=5}">
								<c:forEach var="i" begin="1" end="${rdto.balance}" step="1">
								★
								</c:forEach>
								<c:forEach var="i" begin="${rdto.balance+1}" end="5" step="1">
								☆
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="1" end="5" step="1">
								☆
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					경영진
					<div>
							<c:choose>
							<c:when test="${rdto.executive >0 && rdto.executive <5}">
								<c:forEach var="i" begin="1" end="${rdto.executive}" step="1">
								★
								</c:forEach>
								<c:forEach var="i" begin="${rdto.executive+1}" end="5" step="1">
								☆
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="1" end="5" step="1">
								☆
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="myrow container-80">
					<div class="myrow">기업한줄평</div>
					<div class="myrow">
						<textarea class="container-100 textarea shape-circle"
							style="height: 100px;" readonly>${rdto.onecomment}</textarea>
					</div>
					<div class="myrow">경영진에게 바라는 점</div>
					<div class="myrow">
						<textarea class="container-100 textarea shape-circle"
							style="height: 100px;" readonly>${rdto.hopecomment}</textarea>
					</div>
					<div class="myrow">
					<c:choose>
						<c:when test="${rdto.recommend == 1}">
							이 기업을 추천합니다!
						</c:when>
						<c:otherwise>
							이 기업을 추천하지 않습니다.
						</c:otherwise>
					</c:choose>
					</div>
					<div class="myrow">
						<div class="in-align-center">
							<input type="button" class="button shape-circle" value="좋아요!">
						</div>
					</div>
				</div>
			</div>
		</div>

          </div>    
    </div>         



<jsp:include page="/WEB-INF/view/template/footer.jsp" />