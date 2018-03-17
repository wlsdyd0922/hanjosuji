<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="container-1000 out-align-center padding">
	<div class="in-align-center">
		<h1>아이디/비밀번호 찾기</h1>
	</div>
	<div class="div-2">
		<div style="width: 50%; height: 50%" class="myrow div-main">
			<div class="myrow rest-area">
				<div class="in-align-center">
					<span class="glyphicon glyphicon-user" style="font-size: 150px;"></span>
				</div>
				<h1 class="in-align-center">일반회원</h1>
			</div>
			<div class="myrow rest-area div-2">
				<div class="myrow rest-area">
					<div class="in-align-center">
						<input type="button" class="button shape-circle" value="아이디찾기"
							onclick="location.href = '${pageContext.request.contextPath }/member/find_id_personal'">
					</div>
				</div>
				<div class="myrow rest-area">
					<div class="in-align-center">
						<input type="button" class="button shape-circle" value="비밀번호찾기"
							onclick="location.href = '${pageContext.request.contextPath }/member/find_pw_personal'">
					</div>
				</div>
			</div>
		</div>
		<div style="width: 50%; height: 50%" class="myrow div-main">
			<div class="myrow rest-area">
				<div class="in-align-center">
					<span class="glyphicon glyphicon-calendar"
						style="font-size: 150px;"></span>
				</div>
				<h1 class="in-align-center">기업회원</h1>
			</div>
			<div class="myrow rest-area div-2">
				<div class="myrow rest-area">
					<div class="in-align-center">
						<input type="button" class="button shape-circle" value="아이디찾기"
							onclick="location.href = '${pageContext.request.contextPath }/member/find_id_company'">
					</div>
				</div>
				<div class="myrow rest-area">
					<div class="in-align-center">
						<input type="button" class="button shape-circle" value="비밀번호찾기"
							onclick="location.href = '${pageContext.request.contextPath }/member/find_pw_company'">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>