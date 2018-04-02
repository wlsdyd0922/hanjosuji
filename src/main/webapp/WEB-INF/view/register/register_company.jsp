<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>

<script src = "${pageContext.request.contextPath}/js/sha256.js"></script>
<script src="${pageContext.request.contextPath}/js/register_company.js"></script>
<script src="${pageContext.request.contextPath}/js/search_company.js"></script>
<script>

</script>
	
<form action="${pageContext.request.contextPath }/register/register_company" method="post">
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-envelope"></i>
			</span> 
			<input type="text" class="form-control" name="email" placeholder="아이디를 입력하세요">
		</div>
		<div class="padding font-medium in-align-center" id="checkMsg"></div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="password" class="form-control" name="pw" placeholder="비밀번호를 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons glyphicons-lock" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="password" class="form-control" name="pw_again" placeholder="비밀번호를 다시 입력해주세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake" id="sizing-addon1">
				<i class="glyphicon glyphicon-phone-alt"></i>
			</span>
			<input type="text" class="form-control" name="phone" placeholder="- 없이 입력하세요">
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-user"></i>
			</span> <input type="text" class="form-control" name="name" placeholder="관리자 성함을 입력해주세요">
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
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-lock"></i>
			</span>
			<input type="text" class="form-control" name="pwans" placeholder="비밀번호 확인 답을 입력해 주세요">
		</div>
		<div class="div-2">
			<div class="container-90 myrow input-group input-group-lg">
				<span class="input-group-addon glyphicons-tent" id="sizing-addon1">
					<i class="glyphicon glyphicon-tent"></i>
				</span>
				<input type="text" class="form-control" id="company_name" name="company" placeholder="회사를 검색해 주세요" readonly required>
			</div>
			<div class="rest-area padding">
				<button class="btn btn-primary input-lg" id="company_search_button">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>
		
				
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-bitcoin"></i>
			</span>
			<input type="text" class="form-control" name="ceo" id = "company_ceo" placeholder="대표" readonly>
		</div>
		
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-user"></i>
			</span> 
			<input type="text" class="form-control" id = "company_industry" name="industry" placeholder="산업군" readonly>
		</div>
		
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-user"></i>
			</span> 
			<input type="text" class="form-control" id = "company_birth" name="birth" placeholder="설립일" readonly>
		</div>
				

					
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-user"></i>
			</span> 
			<input type="text" class="form-control" id = "company_location" name="location" placeholder="주소" readonly>
		</div>
		
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-user"></i>
			</span> 
			<input type="text" class="form-control" id = "company_employee" name="employee" placeholder="근무인원" readonly>
		</div>

		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-bitcoin"></i>
			</span>
			<input type="text" class="form-control" name="sales" id = "company_sales" placeholder="매출액" readonly>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-bitcoin"></i>
			</span>
			<input type="text" class="form-control" name="web" id = "company_web" placeholder="웹사이트" readonly>
		</div>
		
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-bitcoin"></i>
			</span>
			<input type="text" class="form-control" name="type" id = "company_type" placeholder="기업형태" readonly>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">
				<i class="glyphicon glyphicon-bitcoin"></i>
			</span>
			<input type="text" class="form-control" name="code" id = "company_code" placeholder="사업자 번호" readonly>
		</div>
		<input type="hidden" name = "grade" value = "기업">

		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit" value="가입완료"> 
			<input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기" onclick="history.back()">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>