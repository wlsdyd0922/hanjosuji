<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/board/write"
	method="post">
	<div class="in-align-center">
		<h1>채용 공고 작성</h1>
	</div>
	<div class="container-1000 out-align-center">
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">제목</div>
			<div class="container-80">
				<input class="form-control input-lg" type="text" name="title" required>
				<input type="hidden" name="company" value="${company}">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">고용인원</div>
			<div class="container-80">
				<input class="form-control input-lg" type="text" name="employee"
					placeholder="숫자로 입력해 주세요" required>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">근무지역</div>
			<div class="container-30">
				<select name="location" class="container-100 input-lg">
					<option selected value="">=== 선택 ===</option>
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
			<div class="container-20 input-lg text-primary border-circle">고용형태</div>
			<div class="container-30">
				<select name="empltype" class="container-100 input-lg">
					<option value="정규직">정규직</option>
					<option value="계약직">계약직</option>
					<option value="인턴">인턴</option>
					<option value="파견직">파견직</option>
					<option value="프리랜서">프리랜서</option>
				</select>
			</div>
		</div>
		
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">경력</div>
			<div class="container-30">
				<select name="career" class="container-100 input-lg">
					<option value="신입">신입</option>
					<option value="2년이하">2년이하</option>
					<option value="3~5년">3~5년</option>
					<option value="6년이상">6년이상</option>
					<option value="경력무관">경력무관</option>
				</select>
			</div>
			<div class="container-20 input-lg text-primary border-circle">최종학력</div>
			<div class="container-30">
				<select name="edu" class="container-100 input-lg">
					<option value="학력무관">학력무관</option>
					<option value="고등학교졸업">고등학교졸업</option>
					<option value="대학(2,3년)졸업">대학(2,3년)졸업</option>
					<option value="대학교(4년)졸업">대학교(4년)졸업</option>
					<option value="석사졸업">석사졸업</option>
					<option value="박사졸업">박사졸업</option>
				</select>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">모집분야</div>
			<div class="container-80">
				<input class="form-control input-lg" type="text" name="department" required>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">급여</div>
			<div class="container-80">
				<input class="form-control input-lg" type="text" name="salary"
					placeholder="예) 3000만원  / 회사내규" required>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">근무시간</div>
			<div class="container-80">
				<input class="form-control input-lg" type="text" name="working" required>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20 input-lg text-primary border-circle">기타내용</div>
			<div class="container-80">
				<textarea class="textarea container-100" style="height: 200px"
					name="contents" required></textarea>
			</div>
		</div>
		<div class="container-100 in-align-center">
			<input type="submit" class="button shape-circle" value="작성하기">
			<input type="button" class="button shape-circle" value="돌아가기" onclick="history.back()"> 
		</div>
	</div>
</form>


<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>