<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-800 out-align-center">
	
	<h3>name : ${nmdto.name}</h3>
    <h3>id : ${nmdto.email}</h3>
    <h3>gender : ${nmdto.gender}</h3>
    <h3>phone : ${nmdto.phone}</h3>
    <h3>addr : ${nmdto.addr}</h3>
    <h3>addr2 : ${nmdto.addr2}</h3>
    <h3>birth : ${nmdto.birth}</h3>
    <h3>image:${nmdto.imgname}</h3>
    <h3>image:${nmdto.imgencoding}</h3>


	<div class="div-2">
		<div class="myrow content-size height-250 background-white">
			<div class="div-2 border-white">
				<div class="rest-area">
					<h3 class="myrow">${nmdto.name}</h3>
				</div>
				<div class="rest-area in-align-right">
					<h3 class="myrow">
						<a href="${pageContext.request.contextPath }/member/show_personal">상세보기</a>
						<a href="${pageContext.request.contextPath }/member/edit_personal">편집</a>
					</h3>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size border-circle">
					
					<div style="height: 63%">
						<img src="${pageContext.request.contextPath }/img/noone.jpg" class="image-center height-100">;
					</div>
					
					<div>
					<form action="${pageContext.request.contextPath }/member/upload" method="post" enctype="multipart/form-data">
						<input type="file" name="file" >
						<div class="in-align-center">
							<input type="submit" value="업로드"> 
							<input type="button" value="사진삭제">
						</div>
					</form>
					</div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">아이디</div>
					<div class="input-lg">${nmdto.email}</div>
					<div class="input-lg text-primary border-circle">생년월일</div>
					<div class="input-lg">${nmdto.birth}</div>
				</div>
			</div>
		</div>
		<div class="myrow content-size height-250  background-white">
			<div>
				<div class="div-2 border-white">
					<h3 class="myrow">상세정보</h3>
					<div class="rest-area in-align-right">
						<h3 class="myrow">
							<a href="${pageContext.request.contextPath }/member/show_detail">상세보기</a>
							<a href="${pageContext.request.contextPath }/register/register_detail">편집</a>
						</h3>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 81%">
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">선호기업종목</div>
					<div class="input-lg">IT/정보업체</div>
					<div class="input-lg text-primary border-circle">경력유무</div>
					<div class="input-lg">경력직</div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">선호기업</div>
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
		<div class="myrow content-size height-250  background-white">
			<div>
				<div class="div-2 border-white">
					<h3 class="myrow">이력서등록</h3>
					<div class="rest-area in-align-right">
						<h3 class="myrow">
							<a href="${pageContext.request.contextPath }/member/resume">상세보기</a>
							<a href="${pageContext.request.contextPath }/member/edit_resume">편집</a>
						</h3>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 29%;">
				<div class="myrow rest-area input-lg border-circle">등록완료</div>
			</div>
			<div>
				<div class="div-2 border-white">
					<h3 class="myrow">자기소개서등록</h3>
					<div class="rest-area in-align-right">
						<h3 class="myrow">
							<a href="${pageContext.request.contextPath }/member/introduction_paper">상세보기</a>
							<a href="${pageContext.request.contextPath }/member/edit_introduction_paper">편집</a>
						</h3>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 29%;">
				<div class="myrow rest-area input-lg border-circle">등록완료</div>
			</div>
		</div>
		<div class="myrow content-size height-250  background-white">
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