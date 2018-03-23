<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center padding">
	<div class="padding background-white">
		<h1>JAVA/JSP 개발자 채용</h1>
	</div>
	<div class="div-2">
		<div class="container-60">
			<div class="padding">
				<div class="padding row">
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">
							품질관리</div>
					</div>
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">경기
						</div>
					</div>
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">경력
						</div>
					</div>
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">
							정규직</div>
					</div>
				</div>
			</div>
			<div class="div-main">
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">주요 업무</div>
				</div>
				<div class="background-white font-medium padding">
					☆ dsfsdfsdfsd<br> ☆ sdfsdfsdfsdf<br> ☆ sdfsdfsdfsdfsd
				</div>
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">자격 요건</div>
				</div>
				<div class="background-white font-medium padding">
					☆ dsfsdfsdfsd<br> ☆ sdfsdfsdfsdf<br> ☆ sdfsdfsdfsdfsd
				</div>
			</div>
			<hr>
			<div class="div-main">
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">기업 정보</div>
				</div>
				<div class="background-white font-medium padding div-main">
					<div class="rest-area div-2">
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>웹사이트</b>
							</div>
							<div class="rest-area font-smallest">www.naver.com</div>
						</div>
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>본사</b>
							</div>
							<div class="rest-area font-smallest">제주도</div>
						</div>
					</div>
					<div class="rest-area div-2">
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>웹사이트</b>
							</div>
							<div class="rest-area font-smallest">www.naver.com</div>
						</div>
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>본사</b>
							</div>
							<div class="rest-area font-smallest">제주도</div>
						</div>
					</div>
					<div class="rest-area div-2">
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>웹사이트</b>
							</div>
							<div class="rest-area font-smallest">www.naver.com</div>
						</div>
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>본사</b>
							</div>
							<div class="rest-area font-smallest">제주도</div>
						</div>
					</div>
					<div class="rest-area div-2">
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>웹사이트</b>
							</div>
							<div class="rest-area font-smallest">www.naver.com</div>
						</div>
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>본사</b>
							</div>
							<div class="rest-area font-smallest">제주도</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-40">
			<div class="padding div-main" style="height: 190px;">
				<div class="background-white">
					<div class="div-2" style="height: 70%;">
						<div class="container-100">
							<div class="padding">
								<div class="out-align-center"
									style="width: 100px; height: 100px;">
									<img src="${pageContext.request.contextPath }/img/logo.png" style="width: 100%; height: auto;">
								</div>
							</div>
						</div>
						<div class="container-100 div-main">
							<div class="rest-area"></div>
							<div class="rest-area"></div>
							<div class="rest-area font-medium in-align-center">회사이름</div>
							<div class="rest-area font-medium in-align-center">홈페이지</div>
						</div>
					</div>
					<div class="div-2" style="height: 30%">
						<div class="container-100 font-medium in-align-center">
							<button class="background-white shape-circle">좋아요♡</button>
						</div>
						<div class="container-100 font-medium in-align-center">
							<a href="${pageContext.request.contextPath }/company/companyreview">기업상세보기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container-100" style="height: 200px;">
				<div class="padding div-main">
					<div class="background-white">
						<div class="rest-area padding font-medium">
							<b>이 기업의 다른채용 공고</b>
						</div>
						<div class="rest-area div-2">

							<!-- for문 -->
							<div class="container-20 padding">
								<img src="${pageContext.request.contextPath }/img/logo.png" style="width: 100%; height: auto;">
							</div>
							<div class="container-80 padding">
								<h4>청소부 모집</h4>
							</div>
							<!-- 끝 -->

						</div>
					</div>
				</div>
				<div class="padding">
					<button class="form-btn-full font-medium btn btn-primary openMask">지원하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>