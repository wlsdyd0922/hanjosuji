<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>
<script>
	function apply(data_value){
		wrapWindowByMask();
		$("#pop").fadeIn();
		$("#no").attr("value",data_value);
		console.log($("#no").val());
	}
</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/sliding.css">
<script src="${pageContext.request.contextPath}/js/sliding.js"></script>
<form action="${pageContext.request.contextPath }/company/companylist" method="post">
<div class="container-60 out-align-center border">
	<div class="simple_banner_wrap banner03" data-nav-type="prev_next">
		<ul>
			<li><a href="#"><img src="img/ad1.gif" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad2.png" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad3.jpg" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad4.gif" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad5.jpg" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad6.png" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad7.gif" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad8.jpg" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad9.png" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad10.jpg" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad11.png" width=100% height=70%></a></li>
			<li><a href="#"><img src="img/ad12.png" width=100% height=70%></a></li>
		</ul>
	</div>
		<div class="myrow in-align-center border-white div-main"
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
							<option selected value="">경력</option>
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
					class="input-group-btn"> 
					<input type="submit" class="btn btn-secondary" value="검색">
				</span>
			</div>
		</div>
	</div>
</form>
	<div class="container-90 div-main out-align-center">
	<table class = "table">
	<tbody>
		<c:forEach var="bdto" items="${list}" varStatus="status">
			<tr>
				<td class="container-30">
					<div class="background_white height-60px">
						<a class="a" href="${pageContext.request.contextPath }/company/employment_information?no=${bdto.no}" >${bdto.title}</a>
					</div>
				</td>
	
				<td class="container-30">
					<div class="background_white height-60px">
						${bdto.department} | ${bdto.edu}
					</div>
				</td>
				<td class="container-30">
					<div class="background_white height-60px">
						${bdto.career} | ${bdto.empltype}
					</div>
				</td>
				<td>
					<div class="background_white height-60px">
						<a class="a" id="company_name" href="${pageContext.request.contextPath }/company/companyreview?company=${bdto.company}">${fn:toUpperCase(bdto.company)}</a>
					</div>
				</td>		
				<td class="container-10">
					<button class="form-btn-full apply-btn" onclick=apply(${bdto.no })>지원</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	<tfoot>
		<tr>
			<td colspan="11">
				<c:if test="${adto.pageblockstart ne 1 }">
					<a href="?pageno=${adto.pageblockstart-1}">[이전]</a>
				</c:if>
				<c:forEach var="pageNo" begin="${adto.pageblockstart}" end="${adto.pageblockend}" step="1">
					<a href="?pageno=${pageNo}"
						<c:if test="${adto.pageno eq pageNo}">
							style="font-weight: bold; color: red;" 
						</c:if>>${pageNo}</a>
				</c:forEach>
				<c:if test="${adto.pagesize!=adto.pageblockend}">
					<a href="?pageno=${adto.pageblockstart+adto.pageblocksize}">[다음]</a>
				</c:if>
			</td>
		</tr>
	</tfoot>
	</table>
	</div>
<c:if test="${not empty accept }">
<!-- 입사 지원시 -->
<form action="${pageContext.request.contextPath}/member/apply" method="post">
<input type="hidden" name="no" id="no">
	<div id="mask"></div>
	<div id="pop" class="padding">
		<div style="color: white">
			<h1>${cdto.name}입사지원</h1>
		</div>
		<div>
			<span id="x-mark" class="icono-cross"></span>
		</div>
		<div>
			<div id="inside" class="padding">
				<div class="container-100 padding">
					<div class="div-main">
						<div>
							<input type="text" class="form-input-full font-medium" name="resume_name"
								placeholder="이력서 이름을 입력해주세요">
						</div>
						<div class="padding font-medium">
						이력서
							<c:choose>
								<c:when test="${not empty rdto.career}">
									<!-- 이력서 존재시-->
									 <span class="icono-checkCircle" style="color: lightblue"></span>
								</c:when>
								<c:otherwise>
									<!-- 이력서 미존재시 -->
									<span class="icono-plusCircle" style="color: lightblue"
									onclick="location.href='${pageContext.request.contextPath}/member/edit_resume'"></span>
								</c:otherwise>
							</c:choose>
							자기소개서 
							<c:choose>
								<c:when test="${not empty rdto.pr1}">
							<!-- 자소서 존재시-->
							<span class="icono-checkCircle" style="color: lightblue"></span>
								</c:when>
								<c:otherwise>
							<!-- 자소서 미존재시 -->
							<span class="icono-plusCircle" style="color: lightblue"
								onclick="location.href='${pageContext.request.contextPath}/member/edit_introduction_paper'"></span>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div>
					<input type="submit" class="btn btn-primary btn-lg" value="지원하기">
				</div>
			</div>
		</div>
	</div>
	</form>
</c:if>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>

