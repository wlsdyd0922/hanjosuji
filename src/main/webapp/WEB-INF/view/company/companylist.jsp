<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>

<script src="/js/search.js"></script>
<div class="out-align-center container-1000">
	<form action="${pageContext.request.contextPath }/company/companylist"
		method="post">
		<div class="container-60 out-align-center border">
			<div class="myrow in-align-center border div-main"
				style="height: 200px;">
				<div class="myrow div-2 input-lg" style="height: 80%">
					<div class="container-100 div-main">
						<div class="form-group height-100">
							<select name="favSort" class="container-100">
								<option selected value="">직업별</option>
								<option value="경영/사무">경영/사무</option>
								<option value="영업/고객상담">영업/고객상담</option>
								<option value="IT/인터넷">IT/인터넷</option>
								<option value="디자인">디자인</option>
								<option value="서비스">서비스</option>
								<option value="전문직">전문직</option>
								<option value="의료">의료</option>
								<option value="생산/제조">생산/제조</option>
								<option value="건설">건설</option>
								<option value="유통/무역">유통/무역</option>
								<option value="미디어">미디어</option>
								<option value="교육">교육</option>
								<option value="특수계층/공공">특수계층/공공</option>
							</select>
						</div>
						<div class="form-group height-100">
							<select name="level_of_education" class="container-100">
								<option selected value="">학력별</option>
								<option value="대학교졸업(4년)">대학교졸업(4년)</option>
								<option value="대학교졸업(2,3년)">대학교졸업(2,3년)</option>
								<option value="대학원석사">대학원석사</option>
								<option value="대학원박사">대학원박사</option>
								<option value="고등학교졸업">고등학교졸업</option>
								<option value="학력무관">학력무관</option>
							</select>
						</div>
						<div class="form-group height-100">
							<select name="career" class="container-100">
								<option selected value=""> 경력 </option>
								<option value="신입">신입</option>
								<option value="2년 이하">2년이하</option>
								<option value="3~5년">3~5년</option>
								<option value="6년이상">6년이상</option>
								<option value="경력무관">경력무관</option>
							</select>
						</div>
					</div>

					<div class="container-100">
						<div class="form-group">
							<select name="favRegion" class="container-100">
								<option selected value="">지역별</option>
								<option value="서울">서울</option>
								<option value="경기">경기</option>
								<option value="인천">인천</option>
								<option value="부산">부산</option>
								<option value="대구">대구</option>
								<option value="광주">광주</option>
								<option value="대전">대전</option>
								<option value="울산">울산</option>
								<option value="세종">세종</option>
								<option value="강원">강원</option>
								<option value="경남">경남</option>
								<option value="경북">경북</option>
								<option value="전남">전남</option>
								<option value="전북">전북</option>
								<option value="충남">충남</option>
								<option value="충북">충북</option>
								<option value="제주">제주</option>
								<option value="전국">전국</option>
							</select>
						</div>
						<div class="form-group">
							<select name="foam_of_company" class="container-100">
								<option selected value="">기업형태</option>
								<option value="대기업">대기업</option>
								<option value="중소기업">중소기업</option>
							</select>
						</div>
						<div class="form-group">
							<select name="foam_of_employment" class="container-100">
								<option selected value="">근무형태</option>
								<option value="정규직">정규직</option>
								<option value="계약직">계약직</option>
								<option value="인턴">인턴</option>
								<option value="파견직">파견직</option>
								<option value="프리랜서">프리랜서</option>
							</select>
						</div>
					</div>
				</div>
				<div class="myrow rest-area input-group" id="the-basics">
					<input type="text" id="search_job" class="form-control"
						name="keyword" placeholder="검색어를 입력하세요"> <span
						class="input-group-btn"> <input type="submit"
						class="btn btn-secondary" value="검색">
					</span>
				</div>
			</div>
		</div>
	</form>
	<div class="div-2">

		<!-- 해당 부분부터 for문 적용-->

		<div class="container-70 div-main">
			<c:forEach var="bdto" items="${list2}" varStatus="status">
				<div class="myrow div-2 background-white" style="height: 55px;">
					<div class="rest-area height-100">
						<div class="div-main">
							<div class="rest-area div-2">
								<div class="rest-area">
									<div class="form-title-input">
										<div class="rest-area">
											<a id="company_name" href="${pageContext.request.contextPath }/company/companyreview?company=${bdto.company}">${bdto.company}</a>
										</div>
									</div>
								</div>
								<div class="rest-area">
									<div class="form-title-input">
										<a 
											href="${pageContext.request.contextPath }/company/employment_information?no=${bdto.no}">${bdto.title}</a>
									</div>
									<div class="form-input-full">${bdto.department}</div>
								</div>
								<div class="rest-area">
									<div class="form-input-full">${bdto.career}</div>
									<div class="form-input-full">${bdto.edu}</div>
									
								</div>
								<div class="rest-area">
									<div class="form-input-full">${bdto.empltype}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<!-- 해당 부분까지 -->
		<c:if test="${not empty accept}">
			<!-- 로그인 시 보임 -->
			<div class="container-30">
				<div class="padding container-100 background-white">
					<div class="padding" style="height: 10%">
						<img src="${pageContext.request.contextPath }/img/noone.jpg"
							class="image-center height-100">
					</div>
					<hr class="style-one">
					<div class="myrow input-full">
						<a href="${pageContext.request.contextPath }/member/information">내
							프로필</a>
					</div>
					<div class="myrow input-full">
						<h3>관심 기업</h3>
						<c:forEach var="like" items="${likeList}">
							<div>
								<a
									href="${pageContext.request.contextPath}/companyreview?company=${like.company}">${like.company}</a>
							</div>
						</c:forEach>
					</div>

				</div>
			</div>
		</c:if>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>