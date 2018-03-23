<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath }/js/company.js"></script>
<form action="${pageContext.request.contextPath }/company/companyreview"
	method="post">
	<div class="container-1000 out-align-center">
		<div class="in-align-left">
			<h1>기업리뷰 작성</h1>
		</div>
		<div class="empty-row"></div>
		<div class="in-align-left">
			<h1>${rdto.company}</h1>
			<h5>${rdto.type}</h5>
			<h5>${rdto.grade}</h5>
		</div>
		<div class="out-align-center" style="width: 1000px; height: 600px;">
			<div id="container">
				<ul class="tabs">
					<li class="active font-small" rel="tab1">기업정보</li>
					<li class="font-small" rel="tab2">기업리뷰</li>
					<li class="font-small" rel="tab3">기업리뷰작성</li>
				</ul>
				<div class="tab_container">
					<div class="padding">
						<div id="tab1" class="tab_content">
							<div class="div-2 container-100 in-align-center">
								<div class="in-align-left container-100">
									<h5>${rdto.company}의전직원현직원들이작성한 (리뷰개수)개의 기업리뷰 등을 확인하세요</h5>
									<div class="myrow content-size">
										대표
										<div class="input-lg text-primary"></div>
										설립일
										<div class="input-lg text-primary">1999.09.01</div>
										웹사이트
										<div class="input-lg text-primary">www.google.com</div>
										사원수
										<div class="input-lg text-primary"></div>
										기업형태
										<div class="input-lg text-primary"></div>
										매출액
										<div class="input-lg text-primary"></div>
										본사
										<div class="input-lg text-primary">주소</div>
									</div>
								</div>
								<div class="container-100">
									<h1>채용정보</h1>
									<hr class="style-one">
									<div class="padding container-100"
										style="height: 400px; display: flex; flex-wrap: wrap;">

										<!-- 채용 정보 for문 -->
										<div class="padding container-50" style="height: 190px;">
											<div class="container-100 height-100 background-image">
												<div class="div-main">
													<div style="height: 65%"></div>
													<div class="rest-area div-2"
														style="background-color: white">
														<div class="padding-5 container-30">
															<div style="width: 40px; height: 40px;">
																<img src="${pageContext.request.contextPath }/img/logo.png" class="container-100">
															</div>
														</div>
														<div class="div-main padding-5 container-70">
															<div>JAVA/JSP 개발자 구함</div>
															<div>
																<a class="openMask">지원하기</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- for문 끝 -->

									</div>
								</div>
							</div>
						</div>
						<!-- #tab1 -->
						<div id="tab2" class="tab_content">
							<div class="padding div-2 container-100 in-align-center">
								<div class="div-main container-100">
									<div class="myrow div-2"
										style="height: 10%; background-color: cornflowerblue">
										<img src="${pageContext.request.contextPath }/img/noone.jpg"
											class="height-100">
										<div class="myrow">${rdto.type}/${rdto.typedetail}</div>
										<div class="myrow">${rdto.status}</div>
										<div class="myrow">${rdto.location}</div>
										<div class="myrow">${rdto.reg}</div>
									</div>
									<div class="div-2">
										<div class="myrow container-20">
											기업평점
											<div>
												<c:choose>
													<c:when test="${rdto.grade >0 && rdto.grade <=5}">
														<c:forEach var="i" begin="1" end="${rdto.grade}" step="1">
                                                                    ★
                                                                </c:forEach>
														<c:forEach var="i" begin="${rdto.grade+1}" end="5"
															step="1">
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
														<c:forEach var="i" begin="1" end="${rdto.welfare}"
															step="1">
                                                                    ★
                                                                </c:forEach>
														<c:forEach var="i" begin="${rdto.welfare+1}" end="5"
															step="1">
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
														<c:forEach var="i" begin="1" end="${rdto.balance}"
															step="1">
                                                                    ★
                                                                </c:forEach>
														<c:forEach var="i" begin="${rdto.balance+1}" end="5"
															step="1">
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
														<c:forEach var="i" begin="1" end="${rdto.executive}"
															step="1">
                                                                    ★
                                                                </c:forEach>
														<c:forEach var="i" begin="${rdto.executive+1}" end="5"
															step="1">
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
													<input type="button" class="button shape-circle"
														value="좋아요!">
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- #tab2 -->
						<div id="tab3" class="tab_content">
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
										<select name="type"
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
											class="container-70 height-100 image-center"
											placeholder="**년차형태">
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
											<input type="button" class="button shape-circle" value="이전으로">
										</div>
									</div>
									<div class="container-100">
										<div class="in-align-right">
											<input type="button" class="button shape-circle" value="다음으로"
												onclick="location.href='/company/companylist'">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- .tab_container -->
				</div>
				<!-- #container -->
			</div>
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>