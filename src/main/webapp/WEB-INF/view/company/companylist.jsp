<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>

<div class="out-align-center container-1000">
	<form action="${pageContext.request.contextPath }/company/companylist">
		<div class="container-60 out-align-center border">
			<div class="myrow in-align-center border div-main"
				style="height: 200px;">
				<div class="myrow div-2 input-lg" style="height: 80%">
					<div class="container-100 div-main">
						<div class="form-group height-100">
							<select name="favSort" class="container-100">
								<c:if test="${favSort eq '경영/사무'}">selected</c:if>
								<option <c:if test="${empty favSort}">selected</c:if> value="">직종
									선택</option>
								<option <c:if test="${favSort eq '경영/사무'}">selected</c:if>
									value="경영/사무">경영/사무</option>
								<option <c:if test="${favSort eq '영업/고객상담'}">selected</c:if>
									value="영업/고객상담">영업/고객상담</option>
								<option <c:if test="${favSort eq 'IT/인터넷'}">selected</c:if>
									value="IT/인터넷">IT/인터넷</option>
								<option <c:if test="${favSort eq '디자인'}">selected</c:if>
									value="디자인">디자인</option>
								<option <c:if test="${favSort eq '서비스'}">selected</c:if>
									value="서비스">서비스</option>
								<option <c:if test="${favSort eq '전문직'}">selected</c:if>
									value="전문직">전문직</option>
								<option <c:if test="${favSort eq '의료'}">selected</c:if>
									value="의료">의료</option>
								<option <c:if test="${favSort eq '생산/제조'}">selected</c:if>
									value="생산/제조">생산/제조</option>
								<option <c:if test="${favSort eq '건설'}">selected</c:if>
									value="건설">건설</option>
								<option <c:if test="${favSort eq '유통/무역'}">selected</c:if>
									value="유통/무역">유통/무역</option>
								<option <c:if test="${favSort eq '미디어'}">selected</c:if>
									value="미디어">미디어</option>
								<option <c:if test="${favSort eq '교육'}">selected</c:if>
									value="교육">교육</option>
								<option <c:if test="${favSort eq '특수계층/공공'}">selected</c:if>
									value="특수계층/공공">특수계층/공공</option>
							</select>
						</div>
						<div class="form-group height-100">
							<select name="level_of_education" class="container-100">
								<option <c:if test="${empty level_of_education}">selected</c:if>
									value="">학력선택</option>
								<option
									<c:if test="${level_of_education eq '학력무관'}">selected</c:if>
									value="학력무관">학력무관</option>
								<option
									<c:if test="${level_of_education eq '고등학교졸업'}">selected</c:if>
									value="고등학교졸업">고등학교졸업</option>
								<option
									<c:if test="${level_of_education eq '대학(2,3년)졸업'}">selected</c:if>
									value="대학(2,3년)졸업">대학(2,3년)졸업</option>
								<option
									<c:if test="${level_of_education eq '대학교(4년)졸업'}">selected</c:if>
									value="대학교(4년)졸업">대학교(4년)졸업</option>
								<option
									<c:if test="${level_of_education eq '석사졸업'}">selected</c:if>
									value="석사졸업">석사졸업</option>
								<option
									<c:if test="${level_of_education eq '박사졸업'}">selected</c:if>
									value="박사졸업">박사졸업</option>
							</select>
						</div>
						<div class="form-group height-100">
							<select name="career" class="container-100">
								<option <c:if test="${empty career}">selected</c:if> value="">
									경력선택</option>
								<option <c:if test="${career eq '신입'}">selected</c:if>
									value="신입">신입</option>
								<option <c:if test="${career eq '2년 이하'}">selected</c:if>
									value="2년 이하">2년이하</option>
								<option <c:if test="${career eq '3~5년'}">selected</c:if>
									value="3~5년">3~5년</option>
								<option <c:if test="${career eq '6년이상'}">selected</c:if>
									value="6년이상">6년이상</option>
								<option <c:if test="${career eq '경력무관'}">selected</c:if>
									value="경력무관">경력무관</option>
							</select>
						</div>
					</div>

					<div class="container-100">
						<div class="form-group">
							<select name="favRegion" class="container-100">
								<option <c:if test="${empty favRegion}">selected</c:if> value="">지역
									선택</option>
								<option <c:if test="${favRegion eq '서울'}">selected</c:if>
									value="서울">서울</option>
								<option <c:if test="${favRegion eq '경기'}">selected</c:if>
									value="경기">경기</option>
								<option <c:if test="${favRegion eq '인천'}">selected</c:if>
									value="인천">인천</option>
								<option <c:if test="${favRegion eq '부산'}">selected</c:if>
									value="부산">부산</option>
								<option <c:if test="${favRegion eq '대구'}">selected</c:if>
									value="대구">대구</option>
								<option <c:if test="${favRegion eq '광주'}">selected</c:if>
									value="광주">광주</option>
								<option <c:if test="${favRegion eq '대전'}">selected</c:if>
									value="대전">대전</option>
								<option <c:if test="${favRegion eq '울산'}">selected</c:if>
									value="울산">울산</option>
								<option <c:if test="${favRegion eq '세종'}">selected</c:if>
									value="세종">세종</option>
								<option <c:if test="${favRegion eq '강원'}">selected</c:if>
									value="강원">강원</option>
								<option <c:if test="${favRegion eq '경남'}">selected</c:if>
									value="경남">경남</option>
								<option <c:if test="${favRegion eq '경북'}">selected</c:if>
									value="경북">경북</option>
								<option <c:if test="${favRegion eq '전남'}">selected</c:if>
									value="전남">전남</option>
								<option <c:if test="${favRegion eq '전북'}">selected</c:if>
									value="전북">전북</option>
								<option <c:if test="${favRegion eq '충남'}">selected</c:if>
									value="충남">충남</option>
								<option <c:if test="${favRegion eq '충북'}">selected</c:if>
									value="충북">충북</option>
								<option <c:if test="${favRegion eq '제주'}">selected</c:if>
									value="제주">제주</option>
								<option <c:if test="${favRegion eq '전국'}">selected</c:if>
									value="전국">전국</option>
							</select>
						</div>
						<div class="form-group">
							<select name="foam_of_company" class="container-100">
								<option <c:if test="${empty foam_of_company}">selected</c:if>
									value="">기업형태 선택</option>
								<option <c:if test="${foam_of_company eq '대기업'}">selected</c:if>
									value="대기업">대기업</option>
								<option
									<c:if test="${foam_of_company eq '중소기업'}">selected</c:if>
									value="중소기업">중소기업</option>
							</select>
						</div>
						<div class="form-group">
							<select name="foam_of_employment" class="container-100">
								<option <c:if test="${empty foam_of_employment}">selected</c:if>
									value="">근무형태 선택</option>
								<option
									<c:if test="${foam_of_employment eq '정규직'}">selected</c:if>
									value="정규직">정규직</option>
								<option
									<c:if test="${foam_of_employment eq '계약직'}">selected</c:if>
									value="계약직">계약직</option>
								<option
									<c:if test="${foam_of_employment eq '인턴'}">selected</c:if>
									value="인턴">인턴</option>
								<option
									<c:if test="${foam_of_employment eq '파견직'}">selected</c:if>
									value="파견직">파견직</option>
								<option
									<c:if test="${foam_of_employment eq '프리랜서'}">selected</c:if>
									value="프리랜서">프리랜서</option>
							</select>
						</div>
					</div>
				</div>

				<div class="myrow rest-area input-group" id="the-basics">
					<input type="text" id="search_job" class="form-control"
						name="keyword"
						<c:if test="${not empty keyword}">value="${keyword}"</c:if>
						placeholder="검색어를 입력하세요"> <span class="input-group-btn">
						<input type="submit" class="btn btn-secondary" value="검색">
					</span>
				</div>
			</div>
		</div>
	</form>
	<div class="container-100 div-main out-align-center">
		<!-- 해당 부분부터 for문 적용-->
		<table class="table">
			<tbody>
				<c:forEach var="bdto" items="${list2}" varStatus="status">
					<tr>
						<td>
							<div class="background_white height-60px">
								<a class="a"
									href="${pageContext.request.contextPath }/company/employment_information?no=${bdto.no}">${bdto.title}</a>
							</div>
						</td>
						<td class="td">
							<div class="background_white height-60px">
								${bdto.department} | ${bdto.edu}</div>
						</td>
						<td class="td">
							<div class="background_white height-60px">
							${bdto.career} | ${bdto.empltype}
							</div>
						</td>
						<td>
							<div class="background_white height-60px">
								<a class="a" id="company_name" href="${pageContext.request.contextPath }/company/companyreview?company=${bdto.company}">${fn:toUpperCase(bdto.company)}</a>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="11"><c:if test="${adto.pageblockstart ne 1 }">
							<a href="?pageno=${adto.pageblockstart-1}">[이전]</a>
						</c:if> <c:forEach var="pageNo" begin="${adto.pageblockstart}"
							end="${adto.pageblockend}" step="1">
							<a href="?pageno=${pageNo}"
								<c:if test="${adto.pageno eq pageNo}">
							style="font-weight: bold; color: red;" 
						</c:if>>${pageNo}</a>
						</c:forEach> <c:if test="${adto.pagesize!=adto.pageblockend}">
							<a href="?pageno=${adto.pageblockstart+adto.pageblocksize}">[다음]</a>
						</c:if></td>
				</tr>
			</tfoot>
		</table>
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