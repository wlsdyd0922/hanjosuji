<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		$("#find").click(function() {
			var user_name = $('#user_name').val();
			var user_phone = $('#user_phone').val();
			var user_company = $("#company_name").val();
			$.ajax({
				type : "POST",
				url : "find_id_company",
				data : {
					name : user_name,
					phone : user_phone,
					company : user_company
				},
				success : function(email) {
					$("#email").text(email);
					wrapWindowByMask();
					$("#pop").fadeIn();
				},
				error : function() {
					alert("정보가 틀립니다.", window.location.reload());
				}
				});
			});
		});
</script>
<script src="${pageContext.request.contextPath}/js/search_company.js"></script>
<!-- 입력값에 따른 css 변화.js -->
<div class="empty-row"></div>
	<div class="container-500 out-align-center">
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1"><i
				class="glyphicon glyphicon-user"></i></span> <input type="text"
				class="form-control" id="user_name" name="name"
				placeholder="이름을 입력하세요" required>
		</div>
		<div class="myrow input-group input-group-lg">
			<span class="input-group-addon glyphicons-iphone-shake"
				id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i>
			</span> <input type="text" class="form-control" id="user_phone" name="phone"
				placeholder="- 없이 입력하세요" required>
		</div>
		<div class="div-2">
			<div class="container-90 myrow input-group input-group-lg">
				<span class="input-group-addon glyphicons-tent" id="sizing-addon1">
					<i class="glyphicon glyphicon-tent"></i>
				</span> <input type="text" class="form-control" id="company_name"
					name="company" placeholder="회사를 검색해 주세요" readonly required>
			</div>
			<div class="rest-area padding">
				<button class="btn btn-primary input-lg" id="company_search_button">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>
		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full"
				type="submit" id="find" value="아이디찾기"> <input
				class="btn btn-primary btn-lg form-btn-full" type="button"
				value="돌아가기" onclick="history.back()">
		</div>
	</div>
<!-- 아이디 찾기 -->
<div id="mask"></div>
<div id="pop" class="padding">
	<div>
		<span id="x-mark" class="icono-cross"></span>
	</div>
	<div>
		<div id="inside" class="padding">
			<div>
				<h3>찾으시는 아이디는</h3>
			</div>
			<div>
				<label id="email"></label>
			</div>
			<div>
				<h3>입니다.</h3>
			</div>
			<div>
				<button class="btn btn-primary btn-lg"
					onclick="location.href='${pageContext.request.contextPath }/login'">로그인
					하기</button>
				<button class="btn btn-primary btn-lg"
					onclick="location.href='${pageContext.request.contextPath }/findmember/find_pw_company'">비밀번호
					찾기</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>