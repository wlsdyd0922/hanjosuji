<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-800 out-align-center">
	<div class="div-2">
		<div class="myrow content-size height-250 border-white menu-color">
			<div class="div-2 border-white">
				<div class="rest-area">
					<h3 class="myrow">기본정보</h3>
				</div>
				<div class="rest-area">
					<div class="in-align-right input-lg">
						<a href="${pageContext.request.contextPath }/member/show_personal">상세보기</a>
						<a href="${pageContext.request.contextPath }/member/edit_personal">편집</a>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size">
					<div style="height: 63%">
						<img src="${pageContext.request.contextPath }/img/noone.jpg"
							class="image-center height-100">;
					</div>
					<div>
						<input type="file" name="file">
					</div>
					<div class="in-align-center">
						<input type="button" name="upload" value="업로드"> <input
							type="button" name="upload-cancel" value="사진삭제">
					</div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary">아이디 </div>
					<div class="input-lg"> ${sessionScope.accept}</div>
					<div class="input-lg text-primary">생년월일</div>
					<div class="input-lg">89.01.20</div>
				</div>
			</div>
		</div>
		<div class="myrow content-size height-250 border-white menu-color">
			<div class="div-2 border-white">
				<div class="rest-area">
					<h3 class="myrow">상세정보</h3>
				</div>
				<div class="rest-area">
					<div class="in-align-right input-lg">
						<a href="${pageContext.request.contextPath }/member/show_detail">상세보기</a>
						<a href="${pageContext.request.contextPath }/member/register_detail">등록</a>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary">선호기업종목</div>
					<div class="input-lg">IT/정보업체</div>
					<div class="input-lg text-primary">경력유무</div>
					<div class="input-lg">경력직</div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary">선호기업</div>
					<div class="input-lg">1.해군</div>
					<div class="input-lg">2.KCC</div>
					<div class="input-lg">3.KCC건설</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-800 out-align-center">
	<div class="div-2">
		<div class="myrow content-size height-250 border-white menu-color">
			<div class="div-2 border-white">
				<div class="rest-area">
					<h3 class="myrow">이력서 등록</h3>
				</div>
				<div class="rest-area">
					<div class="in-align-right input-lg">
						<a href="${pageContext.request.contextPath }/member/resume">상세보기</a>
						<a href="${pageContext.request.contextPath }/member/edit_resume">편집</a>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 29%;">
				<div class="myrow rest-area input-lg">등록완료</div>
			</div>
			<div>
				<div class="div-2 border-white">
				<div class="rest-area">
					<h3 class="myrow">자기소개서 등록</h3>
				</div>
				<div class="rest-area">
					<div class="in-align-right input-lg">
						<a href="${pageContext.request.contextPath }/member/introduction_paper">상세보기</a>
						<a href="${pageContext.request.contextPath }/member/edit_introduction">편집</a>
					</div>
				</div>
			</div>
			</div>
			<div class="div-2 rest-area" style="height: 29%;">
				<div class="myrow rest-area input-lg">등록완료</div>
			</div>
		</div>
		<div class="myrow content-size height-250 menu-color">
			<div>
				<h3 class="myrow">회원탈퇴</h3>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow rest-area">asdas</div>
				<div class="myrow rest-area">asdasda</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>