<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!--<script src="${pageContext.request.contextPath }/js/company.js"></script>-->

<script src="${pageContext.request.contextPath}/js/review.js"></script>

<div class="container-1000 out-align-center">
	<div class="in-align-left">
		<h1>${cdto.name}</h1>
		<h5>${cdto.industry}</h5>
		<h5>★${avg}</h5>
		<!-- 기업평점 평균으로 보여주기 -->
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
								<!-- 리뷰개수 디비 카운트해서 가져오기 -->
								<h5>${cdto.name}의전직원현 직원 들이 작성한 ${count}개의 기업리뷰 등을 확인하세요</h5>
								<div class="myrow content-size">
									대표
									<div class="form-input text-primary">${cdto.ceo}</div>
									설립일
									<div class="form-input text-primary">${cdto.birth}</div>
									웹사이트
									<div class="form-input text-primary">
										<a href="http://${cdto.website}">${cdto.website}</a>
									</div>
									사원수
									<div class="form-input text-primary">${cdto.employee}명</div>
									기업형태
									<div class="form-input text-primary">${cdto.type}</div>
									매출액
									<div class="form-input text-primary">${cdto.sales}</div>
									본사
									<div class="form-input text-primary">${cdto.addrloc}</div>
								</div>
							</div>
							<div class="container-100">
								<h1>채용정보</h1>
								<hr class="style-one">
								<div class="padding container-100"
									style="height: 400px; display: flex; flex-wrap: wrap;">

									<!-- 채용 정보 for문 -->
									<div class="container-100"
										style="height: 300px; overflow: scroll;">
										<div class="padding div-main">

											<!-- for문 -->
											<c:forEach var="list" items="${list2}">
												<a href="${pageContext.request.contextPath}/company/employment_information?no=${list.no}">${list.title}</a>
												 ${list.department} | ${list.empltype} | ${list.career } | ${list.employee}명
												<hr>
											</c:forEach>
											<!-- 끝 -->
										</div>
									</div>
									<!-- for문 끝 -->
								</div>
							</div>
						</div>
					</div>
					<!-- #tab1 -->
					<div id="tab2" class="tab_content">
						<div class="padding container-100 in-align-center"
							style="overflow: scroll; height: 510px;">
							<!-- for문 시작하기 -->
							<div class="div-main container-100">
								<c:choose>
									<c:when test="${rdto ne null}">
										<c:forEach var="rdto" items="${list}">
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
																<c:forEach var="i" begin="1" end="${rdto.grade}"
																	step="1">
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
											<!-- for문 마지막하기 -->
										</c:forEach>
									</c:when>
									<c:otherwise>
										<h1>등록 된 리뷰가 없습니다.</h1>
									</c:otherwise>
								</c:choose>

							</div>

						</div>
					</div>

					<form
						action="${pageContext.request.contextPath}/company/companyreview"
						method="POST">
						<!-- #tab2 -->
						<div id="tab3" class="tab_content">
							<div class="out-align-center container-100">
								<hr class="style-one">
								<div class="myrow div-2" style="height: 48px;">
									<div class="form-input" style="width: 150px;">기업명</div>
									<div class="rest-area">
										<input type="text" name="company" value="${param.company}"
											class="container-70 height-100 image-center" readonly>
									</div>
								</div>
								<div class="myrow div-2" style="height: 48px;">
									<div class="form-input" style="width: 150px;">현상태</div>
									<select name="status" class="rest-area form-input">
										<option>근무</option>
										<option>퇴사</option>
									</select>
								</div>
								<div class="myrow div-2" style="height: 48px;">
									<div class="form-input" style="width: 150px;">직종</div>
									<div class="rest-area">
										<select name="type"
											class="container-100 height-100 shape-circle">
											<option class="form-input">경영/사무</option>
											<option class="form-input">영업/고객상담</option>
											<option class="form-input">IT/인터넷</option>
											<option class="form-input">디자인</option>
											<option class="form-input">서비스</option>
											<option class="form-input">전문직</option>
											<option class="form-input">의료</option>
											<option class="form-input">생산/제조</option>
											<option class="form-input">건설</option>
											<option class="form-input">유통/무역</option>
											<option class="form-input">미디어</option>
											<option class="form-input">교육</option>
											<option class="form-input">특수계층/공공</option>
										</select>
									</div>
									<div class="rest-area">
										<!-- 위의 메뉴를 선택하면 추가적으로 발생. -->
										<c:if test="">
											<select name="typedetail"
												class="container-100 height-100 shape-circle">
												<option class="form-input">경영/사무</option>
												<option class="form-input">영업/고객상담</option>
												<option class="form-input">IT/인터넷</option>
												<option class="form-input">디자인</option>
												<option class="form-input">서비스</option>
												<option class="form-input">전문직</option>
												<option class="form-input">의료</option>
												<option class="form-input">생산/제조</option>
												<option class="form-input">건설</option>
												<option class="form-input">유통/무역</option>
												<option class="form-input">미디어</option>
												<option class="form-input">교육</option>
												<option class="form-input">특수계층/공공</option>
											</select>
										</c:if>
									</div>
								</div>
								<div class="myrow div-2" style="height: 48px;">
									<div class="form-input" style="width: 150px;">총경력</div>
									<div class="rest-area">
										<input type="text" name="career"
											class="container-70 height-100 image-center"
											placeholder="**년차형태">
									</div>
								</div>
								<div class="myrow div-2" style="height: 48px;">
									<div class="form-input" style="width: 150px;">근무지역</div>
									<div class="rest-area">
										<select name="location"
											class="container-100 height-100 shape-circle">
											<option class="form-input">서울</option>
											<option class="form-input">경기</option>
											<option class="form-input">인천</option>
											<option class="form-input">부산</option>
											<option class="form-input">대구</option>
											<option class="form-input">광주</option>
											<option class="form-input">대전</option>
											<option class="form-input">울산</option>
											<option class="form-input">세종</option>
											<option class="form-input">강원</option>
											<option class="form-input">경남</option>
											<option class="form-input">경북</option>
											<option class="form-input">전남</option>
											<option class="form-input">전북</option>
											<option class="form-input">충남</option>
											<option class="form-input">충북</option>
											<option class="form-input">제주</option>
											<option class="form-input">전국</option>
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
											<input type="submit" class="button shape-circle" value="다음으로">
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- .tab_container -->
			</div>
			<!-- #container -->
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>