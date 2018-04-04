<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		select($("#like").attr("data-value"));
		var company_name = $("#company_name").text();
		
		$("#like").click(function() {
			$.ajax({
				type : "POST",
				url : "employment_information",
				data : { 
					company : company_name
					},
				success :function(){
					if($("#like").val() === "좋아요♥")
						$("#like").val("좋아요♡");
					else
						$("#like").val("좋아요♥");
				}
			});
		});
	});
	
	function select(data_value)
	{
		if(data_value === "true"){
			$("#like").val("좋아요♥");
		}
		else{
			$("#like").val("좋아요♡");
		}
	}
</script>
<div class="container-1000 out-align-center padding">
	<div class="padding background-white">
		<h1>${bdto.title}</h1>
	</div>
	<div class="div-2">
		<div class="container-60">
			<div class="padding">
				<div class="padding row">
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">${bdto.department}
							</div>
					</div>
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">${bdto.career}
						</div>
					</div>
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">${bdto.empltype}
						</div>
					</div>
					<div class="padding col-md-2">
						<div class="font-small in-align-center background-white">${bdto.location}
						</div>
					</div>
				</div>
			</div>
			<div class="div-main">
				
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">채용인원</div>
				</div>
				<div class="background-white font-medium padding">
					${bdto.count }명
				</div>
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">근무시간</div>
				</div>
				<div class="background-white font-medium padding">
					${bdto.working}
				</div>
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">상세내용</div>
				</div>
				<div class="background-white font-medium padding">
					${bdto.contents}
				</div>
			</div>
			<hr>
			<div class="div-main">
				<div class="background-white font-big padding">
					<div class="border-bottom-lightblue">기업 정보</div>
				</div>
				<div class="background-white font-medium padding div-main">
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>웹사이트</b>
							</div>
							<div class="rest-area font-smallest"><a href="http://${cdto.website}">${cdto.website}</a></div>
						</div>
						<div class="container-100 padding div-main">
							<div class="rest-area font-smallest">
								<b>본사</b>
							</div>
							<div class="rest-area font-smallest">${cdto.addrloc} ${cdto.addr2loc }</div>
						</div>
					
				</div>
				<div class="padding">
					<button class="form-btn-full font-medium btn btn-primary openMask">지원하기</button>
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
									<img id="profile-image"
								src="${pageContext.request.contextPath}/upload/${cdto.imgname}"
								width=90px; height=70px;>
								</div>
							</div>
						</div>
						<div class="container-100 div-main">
							<div class="rest-area"></div>
							<div class="rest-area"></div>
							<div id="company_name" class="rest-area font-medium in-align-center">${cdto.name }</div>
							<div class="rest-area font-medium in-align-center">${cdto.website }</div>
						</div>
					</div>
					<div class="div-2" style="height: 30%">
						<div class="container-100 font-medium in-align-center">
							<input type = "button" id = "like" value="좋아요♡" class="background-white shape-circle" data-value="${isLiked }">
						</div>
						<div class="container-100 font-medium in-align-center">
							<a href="${pageContext.request.contextPath }/company/companyreview?company=${cdto.name}">기업상세보기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container-100" style="height: 520px; overflow:scroll;">
				<div class="padding div-main">
					<div class="background-white">
						<div class="rest-area padding font-medium">
							<b>${cdto.name}의 다른채용 공고</b>
						</div>
						<div class="rest-area">

							<!-- for문 -->
							<c:forEach var="list" items="${list}">
							<div class="container-20 padding">
								${list.company}
							</div>
							<div class="container-80 padding">
								<a href="${pageContext.request.contextPath}/company/employment_information?no=${list.no}">${list.title}</a>
							</div>
							</c:forEach>
							<!-- 끝 -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>