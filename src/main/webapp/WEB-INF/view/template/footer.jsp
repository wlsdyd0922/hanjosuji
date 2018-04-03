<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</section>
<!-- 하단 영역 -->
<hr class="style-one">
<footer class="font-small in-align-center"> &copy;WorkSpace </footer>
</main>
<!-- 아이디 찾기 -->
<c:if test="${not empty find_id_personal || not empty find_id_company }">
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
					<h2>${email }</h2>
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
							<button class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/findmember/find_pw_personal'">비밀번호 찾기</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/findmember/find_pw_company'">비밀번호 찾기</button>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</c:if>

<!-- 비밀번호 찾기 -->
<c:if test="${not empty find_pw_personal || not empty find_pw_company }">
	<div id="mask"></div>
	<div id="pop" class="padding">
		<div>
			<span id="x-mark" class="icono-cross"></span>
		</div>
		<div>
			<div id="inside" class="padding">
				<div>
					<div>
						<label>비밀번호</label>
						<input type="text" class="form-control" placeholder="비밀번호를 입력해주세요">
					</div>
					<div>
						<label>비밀번호</label>
						<input type="text" class="form-control" placeholder="비밀번호를 한번 더 입력해주세요">
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>

<!-- 입사 지원시 -->
<c:if test="${not empty loginFlag }">
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
							<input type="text" class="form-input-full font-medium"
								placeholder="이력서 이름을 입력해주세요">
						</div>
						<div class="padding font-medium">
							<!-- 이력서 존재시-->
							이력서 <span class="icono-checkCircle" style="color: lightblue"></span>
							<!-- 이력서 미존재시 -->
							<span class="icono-plusCircle" style="color: lightblue"
								onclick="location.href='${pageContext.request.contextPath}/member/edit_resume'"></span>

							<!-- 자소서 존재시-->
							자기소개서 <span class="icono-checkCircle" style="color: lightblue"></span>
							<!-- 자소서 미존재시 -->
							<span class="icono-plusCircle" style="color: lightblue"
								onclick="location.href='${pageContext.request.contextPath}/member/edit_introduction_paper'"></span>
						</div>
					</div>
				</div>
				<div>
					<button class="btn btn-primary btn-lg" onclick="#">지원하기</button>
				</div>
			</div>
		</div>
	</div>
</c:if>

</body>

</html>