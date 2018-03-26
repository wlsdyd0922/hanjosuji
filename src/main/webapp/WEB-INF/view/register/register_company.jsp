<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>

<script src="${pageContext.request.contextPath}/js/register_company.js"></script>
<script src="${pageContext.request.contextPath}/js/search_company.js"></script>

<form action="${pageContext.request.contextPath }/register/register_company" method="post">
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-envelope"></i>
			</span> 
			<input type="text" class="form-control" name="email" placeholder="아이디를 입력하세요">
		</div>
		<div id="checkMsg"></div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock"
				id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span> <input
				type="password" class="form-control" name="pw"
				placeholder="비밀번호를 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock"
				id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span> <input
				type="password" class="form-control" name="pw_again"
				placeholder="비밀번호를 다시 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake"
				id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i></span>
			<input type="text" class="form-control" name="phone"
				placeholder="- 없이 입력하세요">
		</div>
		<div class="div-2">
			<div class="container-90 myrow input-group input-group-lg">
				<span class="input-group-addon glyphicons-tent" id="sizing-addon1"><i
					class="glyphicon glyphicon-tent"></i></span> <input type="text"
					class="form-control" id="company_name" name="company_name" placeholder="회사명을 입력해주세요" readonly>
			</div>
			<div class="rest-area padding">
				<button class="btn btn-primary input-lg" id="company_search_button">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-user"></i></span> <input type="text"
				class="form-control" name="ceo" placeholder="관리자 성함을 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<h4>설립일을 선택하세요</h4>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-plus"></i></span> <input id="someDate"
				class="form-control" type="date" name="birth">
		</div>
		<div class="myrow">
			<h4>비밀번호 확인 질문을 선택하세요.</h4>
			<div class="form-group">
				<select name="pwquiz" class="form-control input-lg">
					<option>당신이 졸업한 초등학교는?</option>
					<option>어머니 성함은?</option>
					<option>당신의 애완동물 이름은?</option>
				</select>
			</div>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-lock"></i></span> <input type="text"
				class="form-control" name="pwans" placeholder="비밀번호 확인 답을 입력해 주세요">
		</div>
		<div class="myrow">
			<h4>당사의 산업군을 선택하세요</h4>
			<div class="form-group">
				<select name="industry" class="form-control input-lg">
					<option>경영/사무</option>
					<option>영업/고객상담</option>
					<option>IT/인터넷</option>
					<option>디자인</option>
					<option>서비스</option>
					<option>전문직</option>
					<option>의료</option>
					<option>생산/제조</option>
					<option>건설</option>
					<option>유통/무역</option>
					<option>미디어</option>
					<option>교육</option>
					<option>특수계층/공공</option>
				</select>
			</div>
			<h4>사업지역을 선택하세요</h4>
			<div class="form-group">
				<select name="location" class="form-control input-lg">
					<option>서울</option>
					<option>경기</option>
					<option>인천</option>
					<option>부산</option>
					<option>대구</option>
					<option>광주</option>
					<option>대전</option>
					<option>울산</option>
					<option>세종</option>
					<option>강원</option>
					<option>경남</option>
					<option>경북</option>
					<option>전남</option>
					<option>전북</option>
					<option>충남</option>
					<option>충북</option>
					<option>제주</option>
					<option>전국</option>
				</select>
			</div>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-user"></i></span> <input type="text"
				class="form-control" name="employee" placeholder="근무인원을 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-bitcoin"></i></span> <input type="text"
				class="form-control" name="sales" placeholder="매출액을 입력하세요">
		</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit"
				value="가입완료"> <input
				class="btn btn-primary btn-lg form-btn-full" type="button"
				value="돌아가기"
				onclick="location.href = '${pageContext.request.contextPath }/register/register_choose'">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>