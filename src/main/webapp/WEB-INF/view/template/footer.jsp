<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</section>
<!-- 하단 영역 -->
<hr class="style-one">
<footer class="font-small in-align-center"> &copy;WorkSpace </footer>
</main>
<c:if test="${not empty accept }">
<!-- 입사 지원시 -->
	<form action="${pageContext.request.contextPath}/member/apply" method="post">
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
					<input type="hidden" name=no value="${bdto.no}">
					<input type="submit" class="btn btn-primary btn-lg" value="지원하기">
				</div>
			</div>
			
		</div>
	</div>
	</form>
</c:if>
</body>

</html>