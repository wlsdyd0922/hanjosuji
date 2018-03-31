<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="out-align-center container-1000">
	<div class="div-2">
		<div class="container-100 div-main">
			<div class="myrow div-2 background-white" style="height: 300px;">
				<c:choose>
					<c:when test="${ntdto.email eq accept}">

						<div class="rest-area">
							<div class="height-100 div-main">
								<div class="rest-area div-2">
									<div class="rest-area">
										<div class="input-lg">제목</div>
									</div>
									<div class="rest-area">
										<div class="input-lg">${ntdto.title}</div>
									</div>
								</div>
								<div class="rest-area div-2">
									<div class="rest-area">
										<div class="input-lg">시간</div>
									</div>
									<div class="rest-area">
										<div class="input-lg">${ntdto.reg}</div>
									</div>
									<div class="rest-area">
										<div class="input-lg">보낸이</div>
									</div>
									<div class="rest-area">
										<div class="input-lg">${ntdto.company}</div>
									</div>
								</div>
								<div class="rest-area div-2">
									<div class="rest-area">
										<div class="input-lg">내용</div>
										<div>
											<textarea class="container-100 textarea"
												style="height: 100px;" readonly>${ntdto.contents}</textarea>
										</div>
										<div class="div-2">
											<div class="input-lg">
												<a href="${pageContext.request.contextPath}/member/notes">받은
													쪽지함</a>
											</div>
											<div class="input-lg">
												<a
													href="${pageContext.request.contextPath}/notes/send">답장 쓰기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>