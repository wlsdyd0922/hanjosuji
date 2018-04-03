<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<!-- 입력값에 따른 css 변화.js -->
<script>
	$(document).ready(function() {
		var user_name = $("#user_name").val();
		var user_phone = $("#user_phone").val();
		
		$("#find").click(function() {
			$.ajax({
				type : "POST",
				url : "find_id_personal",
				data : {
					name : user_name,
					phone : user_phone
				},
				success : function(email) {
					console.log(email)
					$("#email").text(email);
				},
				error : function() {
					alert("정보가 틀립니다.",location.href="${pageContext.request.contextPath}");
				}
			});
		});
	});
</script>
<div class="empty-row"></div>
<div class="container-500 out-align-center">
	<div class="myrow input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon1"><i
			class="glyphicon glyphicon-envelope"></i></span> <input type="text"
			class="form-control" id="user_name" name="name" placeholder="이름을 입력하세요"
			required>
	</div>
	<div class="myrow input-group input-group-lg">
		<span class="input-group-addon glyphicons-iphone-shake"
			id="sizing-addon1"><i class="glyphicon glyphicon-phone-alt"></i>
		</span> <input type="text" class="form-control" id="user_phone" name="phone"
			placeholder="- 없이 입력하세요" required>
	</div>
	<div class="myrow div-2">
		<input class="btn btn-primary btn-lg form-btn-full openMask" id="find"
			type="button" value="아이디찾기"> <input
			class="btn btn-primary btn-lg form-btn-full" type="button"
			value="돌아가기">
	</div>
</div>
<!-- 아이디 찾기 -->
<c:if test="${not empty find_id_personal || not empty find_id_company  }">
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
					<c:choose>
						<c:when test="${not empty find_id_personal }">
							<button class="btn btn-primary btn-lg"
								onclick="location.href='${pageContext.request.contextPath }/findmember/find_pw_personal'">비밀번호
								찾기</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-primary btn-lg"
								onclick="location.href='${pageContext.request.contextPath }/findmember/find_pw_company'">비밀번호
								찾기</button>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</c:if>

<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>