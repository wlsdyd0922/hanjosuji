<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center">
<form action="${pageContext.request.contextPath }/company/review"
	method="post">
	<div class="in-align-left">
        <h1>기업리뷰 작성</h1>
    </div>
    <div class="empty-row"></div>
	<ul class="nav nav-tabs">
		<li><a
			href="${pageContext.request.contextPath}/company/review_info">기업정보</a></li>
		<li><a
			href="${pageContext.request.contextPath}/company/review_list">기업리뷰</a></li>
		<li class="active"><a
			href="${pageContext.request.contextPath}/company/review">기업리뷰작성</a></li>
	</ul>
	<div class="out-align-center container-100">
		<hr class="style-one">
		<div class="myrow div-2" style="height: 48px;">
			<div class="input-lg" style="width: 150px;">기업명</div>
			<div class="rest-area">
				<input type="text" name="company"
					class="container-70 height-100 image-center"
					placeholder="기업명을 입력해주세요">
			</div>
		</div>
		<div class="myrow div-2" style="height: 48px;">
			<div class="input-lg" style="width: 150px;">현상태</div>
			<select name="status" class="rest-area input-lg">
				<option>근무</option>
				<option>퇴사</option>
			</select>
		</div>
		<div class="myrow div-2" style="height: 48px;">
			<div class="input-lg" style="width: 150px;">직종</div>
			<div class="rest-area">
				<select name="type" class="container-100 height-100 shape-circle">
					<option class="input-lg">경영/사무</option>
					<option class="input-lg">영업/고객상담</option>
					<option class="input-lg">IT/인터넷</option>
					<option class="input-lg">디자인</option>
					<option class="input-lg">서비스</option>
					<option class="input-lg">전문직</option>
					<option class="input-lg">의료</option>
					<option class="input-lg">생산/제조</option>
					<option class="input-lg">건설</option>
					<option class="input-lg">유통/무역</option>
					<option class="input-lg">미디어</option>
					<option class="input-lg">교육</option>
					<option class="input-lg">특수계층/공공</option>
				</select>
			</div>
			<div class="rest-area">
				<!-- 위의 메뉴를 선택하면 추가적으로 발생. -->
				<c:if test="">
					<select name="typedetail"
						class="container-100 height-100 shape-circle">
						<option class="input-lg">경영/사무</option>
						<option class="input-lg">영업/고객상담</option>
						<option class="input-lg">IT/인터넷</option>
						<option class="input-lg">디자인</option>
						<option class="input-lg">서비스</option>
						<option class="input-lg">전문직</option>
						<option class="input-lg">의료</option>
						<option class="input-lg">생산/제조</option>
						<option class="input-lg">건설</option>
						<option class="input-lg">유통/무역</option>
						<option class="input-lg">미디어</option>
						<option class="input-lg">교육</option>
						<option class="input-lg">특수계층/공공</option>
					</select>
				</c:if>
			</div>
		</div>
		<div class="myrow div-2" style="height: 48px;">
			<div class="input-lg" style="width: 150px;">총경력</div>
			<div class="rest-area">
				<input type="text" name="career"
					class="container-70 height-100 image-center" placeholder="**년차형태">
			</div>
		</div>
		<div class="myrow div-2" style="height: 48px;">
			<div class="input-lg" style="width: 150px;">근무지역</div>
			<div class="rest-area">
				<select name="location"
					class="container-100 height-100 shape-circle">
					<option class="input-lg">서울</option>
					<option class="input-lg">경기</option>
					<option class="input-lg">인천</option>
					<option class="input-lg">부산</option>
					<option class="input-lg">대구</option>
					<option class="input-lg">광주</option>
					<option class="input-lg">대전</option>
					<option class="input-lg">울산</option>
					<option class="input-lg">세종</option>
					<option class="input-lg">강원</option>
					<option class="input-lg">경남</option>
					<option class="input-lg">경북</option>
					<option class="input-lg">전남</option>
					<option class="input-lg">전북</option>
					<option class="input-lg">충남</option>
					<option class="input-lg">충북</option>
					<option class="input-lg">제주</option>
					<option class="input-lg">전국</option>
				</select>
			</div>
		</div>
		<hr class="style-one">
		<div class="div-2">
			<div class="container-100">
				<div>
					<input type="button" class="btn btn-primary " value="이전으로">
				</div>
			</div>
			<div class="container-100">
				<div class="in-align-right">
					<input type="submit" class="btn btn-primary" value="다음으로">
				</div>
			</div>
		</div>
	</div>
</form>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>