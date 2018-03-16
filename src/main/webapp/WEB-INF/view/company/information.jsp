<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-50 out-align-center" >
    <div class="in-align-left">
        <h3>회사명</h3>
        <h5>직군</h5>
        <h5>★평점</h5>
    </div>
    <nav class="navbar navbar-default" role="navigation">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/company/information">기업정보</a>
	    </div> 
     <div class="navbar-collapse collapse" id="navbar-collapse-1">
	      <ul class="nav navbar-nav">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/company/review_list">기업리뷰</a>
	      </ul>
         <ul class="nav navbar-nav navbar-right">
		      <li><a href="#">기업리뷰작성</a></li>
         </ul>
    </div>
     <div class="myrow div-2 container-700 in-align-center">
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
