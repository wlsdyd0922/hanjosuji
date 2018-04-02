<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/board/write"
	method="post">
	<div class="in-align-center">
        <h1>채용 공고 작성</h1>
    </div>
    <div class="empty-row"></div>
	<div class="container-1000 out-align-center">
		<div class="div-2">
			<div class="container-20">제목</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="title">
			</div> 
		</div>
		<div class="div-2">
			<div class="container-20">회사명</div>
			<div class="container-80">
				<select name="company">
					<option value="">=== 선택해주세요 ===</option>
					<option value="kgitbank">kgitbank</option>
					<option value="samsung">samsung</option>
					<option value="LG">LG</option>
					<!-- value="self"이면 getParameter company1 받기-->
					<option value="self">직접입력하기</option>
				</select>
				<input class="form-input-full" type="text" name="company1">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">고용인원</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="employee" placeholder="숫자로 입력해 주세요">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">고용형태</div>
			<div class="container-80">
				<select name="empltype">
					<option value="정규직">정규직</option>
					<option value="계약직">계약직</option>
					<option value="인턴">인턴</option>
					<option value="파견직">파견직</option>
					<option value="프리랜서">프리랜서</option>
				</select>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">모집분야</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="department">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">경력</div>
			<div class="container-80">
				<select name="career" class="container-100">
					<option value="신입">신입</option>
					<option value="2년 이하">2년이하</option>
					<option value="3~5년">3~5년</option>
					<option value="6년이상">6년이상</option>
					<option value="경력무관">경력무관</option>
				</select>
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">최종학력</div>
			<div class="container-80">
				<select name="edu" class="container-100">
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
			<div class="container-20">급여</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="salary"
					placeholder="예) 3000만원  / 회사내규">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">근무시간</div>
			<div class="container-80">
				<input class="form-input-full" type="text" name="working">
			</div>
		</div>
		<div class="div-2">
			<div class="container-20">기타내용</div>
			<div class="container-80">
				<textarea class="textarea container-100" style="height:200px" name="contents"></textarea>
			</div>
		</div>
		<div class="container-100 in-align-center">
			<input type="button" value="돌아가기" onclick="#"> 
			<input type="submit" value="작성하기">
		</div> 
	</div>
</form>


<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>