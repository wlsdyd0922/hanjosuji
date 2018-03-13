<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-50 out-align-center">
	<div class="div-2">
		<div class="myrow content-size height-250">
			<div class="div-2">
				<div class="rest-area">
					<h3 class="myrow">기본정보</h3>
				</div>
				<div class="rest-area in-align-right">
					<h3 class="myrow">
						<a href="${pageContext.request.contextPath }/member/edit_personal">편집</a>
					</h3>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size">
					<div style="height: 63%">
						<img src="${pageContext.request.contextPath }/img/noone.jpg" class="image-center height-100">;
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
					<div class="input-lg text-primary">아이디</div>
					<div class="input-lg">123456</div>
					<div class="input-lg text-primary">생년월일</div>
					<div class="input-lg">89.01.20</div>
				</div>
			</div>
		</div>
		<div class="myrow content-size height-250">
			<div>
				<div class="div-2">
					<h3 class="myrow">상세정보</h3>
					<div class="rest-area in-align-right">
						<h3 class="myrow">
							<a href="${pageContext.request.contextPath }/member/edit_detail">편집</a>
						</h3>
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
<div class="container-50 out-align-center">
	<div class="div-2">
		<div class="myrow content-size height-250">
			<div>
				<div class="div-2">
					<h3 class="myrow">기업지원정보</h3>
					<div class="rest-area in-align-right">
						<h3 class="myrow">
							<a href="">편집</a>
						</h3>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow rest-area">asdas</div>
				<div class="myrow rest-area">asdasda</div>
			</div>
		</div>
		<div class="myrow content-size height-250">
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