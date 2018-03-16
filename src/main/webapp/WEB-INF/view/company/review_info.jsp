<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center" >
    <div class="in-align-left">
        <h1>회사명</h1>
        <h5>직군</h5>
        <h5>★평점</h5>
    </div>
   <ul class="nav nav-tabs">
    	<li class="active"><a href="${pageContext.request.contextPath}/company/review_info">기업정보</a></li>
    	<li><a href="${pageContext.request.contextPath}/company/review_list">기업리뷰</a></li>
    	<li><a href="${pageContext.request.contextPath}/company/review">기업리뷰작성</a></li>    
    </ul>
     <div class="myrow div-2 container-100 in-align-center">
         <div class="in-align-left container-50">
        <h3>기업정보</h3>
            <h5>(기업이름) 의 전 직원 현직원들이 작성한 (리뷰개수)개의 기업리뷰 등을 확인하세요</h5>
            <div class="myrow content-size">
            대표<div class="input-lg text-primary">ceo</div>
            설립일<div class="input-lg text-primary">1999.09.01</div>
            웹사이트<div class="input-lg text-primary">www.google.com</div>
            사원수<div class="input-lg text-primary"></div>
            기업형태<div class="input-lg text-primary"></div>
            매출액<div class="input-lg text-primary"></div>
            본사<div class="input-lg text-primary">주소</div>
            </div>
        </div>
          <div class="rest-area">
            <h1>다른채용정보 리스트</h1>
         </div>
          </div>    
    </div>         

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
