<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/info.js"></script>
<script>
	$(document).ready(function() {
		$("#memberleave").hide();
		$("#white-background").hide();
		$("#show-message").hide();
		
		$("#white-background").click(function(){
			$("#white-background").hide();
			$("#show-message").hide();
		});
		
		$("#delete_button").click(function(){
			password = $("#pw").val();
			
			$.ajax({
				type : "POST",
				url : "member_delete",
				data : {
					pw : password
					},
				success :function(result){
					console.log(result)
					if(result === "true"){
						alert("회원삭제에 성공하셨습니다.");
						window.location.href = "/job";
					}else{
						$("#white-background").css("z-index","40000");
						$("#white-background").css("opacity","0.6");
						$("#white-background").show();
						$("#show-message").css("z-index", "50000");
						$("#show-message").show();
					}
				}
			});
		});
		
	});
	
	function memberleave() {
		$("#memberleave").toggle(500);
	}
</script>
<div class="container-800 out-align-center">

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
				<div class="myrow content-size border-circle" align="center">
					<div style="height: 150px">
						<c:if test="${not empty nmdto.imgname }">
							<img id="profile-image"
								src="${pageContext.request.contextPath}/upload/${nmdto.imgname}"
								width=67% height=auto>
						</c:if>
						<c:if test="${empty nmdto.imgname }">
							<img style="object-fit: contain" id="profile-image"
								src="${pageContext.request.contextPath}/img/noone.jpg" width=67%
								height=auto>
						</c:if>
					</div>
					<div class="filebox bs3-primary" style="height: 33px">
						<form id="fileform"
							action="${pageContext.request.contextPath }/member/information"
							method="post" enctype="multipart/form-data">
							<label for="ex_file">업로드</label> <input type="file" name="file"
								class="file" id="ex_file"> <label for="delete">사진삭제</label>
							<input type="button" id="delete">
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
					<div class="input-lg text-primary border-circle">학교</div>
					<div class="input-lg">${rdto.edu}</div>
					<div class="input-lg text-primary border-circle">희망직종</div>
					<div class="input-lg">${rdto.favdivision }</div>
				</div>
				<div class="myrow content-size in-align-center">
					<div class="input-lg text-primary border-circle">경력유무</div>
					<div class="input-lg">${rdto.workingstatusKor() }</div>
					<div class="input-lg text-primary border-circle">희망지역</div>
					<div class="input-lg">${rdto.favregion }</div>
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
				<c:choose>
					<c:when test="${rdto.career==null }">
						<div class="myrow rest-area input-lg border-circle">미등록</div>
					</c:when>
					<c:otherwise>
						<div class="myrow rest-area input-lg border-circle">등록완료</div>
					</c:otherwise>
				</c:choose>
			</div>
			<div>
				<div class="div-2 border-white">
					<h3 class="myrow">자기소개서등록</h3>
					<div class="rest-area in-align-right">
						<h3 class="myrow">
							<a
								href="${pageContext.request.contextPath }/member/introduction_paper">상세보기</a>
							<a
								href="${pageContext.request.contextPath }/member/edit_introduction_paper">편집</a>
						</h3>
					</div>
				</div>
			</div>
			<div class="div-2 rest-area" style="height: 29%;">
				<c:choose>
					<c:when
						test="${rdto.pr1!=null && rdto.pr2!=null && rdto.pr3!=null && rdto.pr4!=null }">
						<div class="myrow rest-area input-lg border-circle">등록완료</div>
					</c:when>
					<c:otherwise>
						<div class="myrow rest-area input-lg border-circle">미등록</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="myrow content-size height-250  background-white">
			<div class="div-2">
				<h3 class="myrow">회원탈퇴</h3>
				<div class="rest-area in-align-right">
					<h3 class="myrow">
						<a onclick="memberleave()">회원탈퇴</a>
					</h3>
				</div>
			</div>
			<div class="rest-area" style="height: 81%">
				<div class="padding">
					<div id="memberleave" style="height: 180px;">
					<div id="white-background" style="background-color: white; position: absolute; width: 350px; height: 180px"></div>
					<div id="show-message" style="position: absolute; top: 650px; left: 830px;"><h3>비밀번호가 틀렸습니다.</h3></div>	
						<div class="empty-row"></div>
						<div class="padding">
							<input type="password" name="pw" id="pw"
								class="form-control font-medium form-input-full"
								placeholder="비밀번호를 입력하세요.">
						</div>
						<div class="padding in-align-center">
							<input type="button" id="delete_button" class="button shape-circle" value="회원 탈퇴">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>