<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
	<div class="empty-row"></div>
	<form action="${pageContext.request.contextPath }/company/companylist" method="post">
		<div class="container-60 out-align-center border">
			<div class="myrow in-align-center border div-main"
				style="height: 200px;">
				<div class="myrow div-2 input-lg" style="height: 80%">
					<div class="container-100 div-main">
						<div class="form-group height-100">
							<select name="favSort" class="container-100">
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
								<option selected>미디어</option>
								<option>교육</option>
								<option>특수계층/공공</option>
							</select>
						</div>
						<div class="form-group height-100">
							<select name="level_of_education" class="container-100">
								<option>대학교졸업(4년)</option>
								<option>대학교졸업(2,3년)</option>
								<option>대학원석사</option>
								<option>대학원박사</option>
								<option>고등학교졸업</option>
								<option>학력무관</option>
							</select>
						</div>
						<div class="form-group height-100">
							<select name="career" class="container-100">
								<option>7~9년</option>
								<option>10~15년</option>
								<option>16~20년</option>
								<option>21년이상</option>
								<option>경력무관</option>
							</select>
						</div>
					</div>

					<div class="container-100">
						<div class="form-group">
							<select name="favRegion" class="container-100">
								<option>서울</option>
								<option>경기</option>
								<option>인천</option>
								<option>부산</option>
								<option>대구</option>
								<option>광주</option>
								<option selected>대전</option>
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
						<div class="form-group">
							<select name="foam_of_company" class="container-100">
								<option>대기업</option>
								<option>중소기업</option>
							</select>
						</div>
						<div class="form-group">
							<select name="foam_of_employment" class="container-100">
								<option>정규직</option>
								<option>계약직</option>
								<option>인턴</option>
								<option>파견직</option>
								<option>프리랜서</option>
							</select>
						</div>
					</div>
				</div>
				<div class="myrow rest-area input-group" id="the-basics">
					<input type="text" id="search_job" class="form-control"
						placeholder="검색어를 입력하세요"> <span class="input-group-btn">
						<input type="submit" class="btn btn-secondary" value="검색">
					</span>
				</div>
			</div>
		</div>
	</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>

