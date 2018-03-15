<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath }/company/review" method="post">
		<div class="out-align-center container-600">
			<h1>기업리뷰작성</h1>
			<hr class="style-one">
			<div class="myrow div-2" style="height: 48px;">
				<div class="input-lg" style="width: 150px;">기업명</div>
				<div class="rest-area">
					<input type="text" name="companyname"
						class="container-70 height-100 image-center"
						placeholder="기업명을 입력해주세요">
				</div>
			</div>
			<div class="myrow div-2" style="height: 48px;">
				<div class="input-lg" style="width: 150px;">현상태</div>
				<select name="area" class="rest-area input-lg">
					<option>근무</option>
					<option>퇴사</option>
				</select>
			</div>
			<div class="myrow div-2" style="height: 48px;">
				<div class="input-lg" style="width: 150px;">직종</div>
				<div class="rest-area">
					<select name="sort" class="container-100 height-100 shape-circle">
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
						<select name="sort-detail"
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
					<input type="text" name="companyname"
						class="container-70 height-100 image-center" placeholder="**년차형태">
				</div>
			</div>
			<div class="myrow div-2" style="height: 48px;">
				<div class="input-lg" style="width: 150px;">근무지역</div>
				<div class="rest-area">
					<select name="area" class="container-100 height-100 shape-circle">
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
						<input type="button" class="button shape-circle" value="이전으로"
						onclick="location.href='${pageContext.request.contextPath }/'">
					</div>
				</div>
				<div class="container-100">
					<div class="in-align-right">
						<input type="button" class="button shape-circle" value="다음으로"
						onclick="location.href='${pageContext.request.contextPath }/company/review_detail'">
					</div>
				</div>
			</div>
		</div>
	</form>
	<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>