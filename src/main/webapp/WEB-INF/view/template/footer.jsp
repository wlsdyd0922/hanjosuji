<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
</section>
<!-- 하단 영역 -->
<hr class="style-one">
<footer class="font-small in-align-center"> &copy;WorkSpace </footer>
</main>
<div id="mask"></div>
<!-- 팝업 창 -->
<div id="pop" class="padding">
	<div style="color: white">
		<h1>"회사이름" 입사지원</h1>
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
				<button class="btn btn-primary btn-lg">지원하기</button>
			</div>
		</div>
	</div>
</div>

</body>

</html>