<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<div class="out-align-center container-1000">
	<div class="div-2">
		<div class="input-lg">
			<a href="${pageContext.request.contextPath}/member/notes">받은 쪽지함</a>
		</div>
		<div class="input-lg">
			<a href="${pageContext.request.contextPath}/member/notes_send">보낸
				쪽지함</a>
		</div>
		<div class="input-lg">
			<a href="${pageContext.request.contextPath}/notes/send">쪽지 보내기</a>
		</div>
	</div>
	<div class="div-2">
		<!-- 해당 부분부터 for문 적용-->
		<div class="container-70 div-main">
			<c:forEach var="ntdto" items="${notes_list}">
				<div class="myrow div-2 background-white" style="height: 150px;">
					<div class="rest-area">
						<div class="height-100 div-main">
							<div class="rest-area div-2">
								<div class="rest-area">
									<div class="input-lg">제목</div>
								</div>
								<div class="rest-area">
									<div class="input-lg">
										<a href="${pageContext.request.contextPath}/member/notes_detail?no=${ntdto.no}">${ntdto.title}</a>
									</div>
								</div>

								<div class="rest-area">
									<div class="input-lg">
										<c:choose>
											<c:when test="${ntdto.read eq 0}">
									        안읽음
									    </c:when>
											<c:otherwise>
									        읽음
									    </c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="rest-area div-2">
								<div class="rest-area">
									<div class="input-lg">보내신 분</div>
								</div>
								<div class="rest-area">
									<div class="input-lg">${ntdto.sender}</div>
								</div>
								<div class="rest-area">
									<div class="input-lg">업체명</div>
								</div>
								<div class="rest-area">
									<div class="input-lg">${ntdto.company}</div>
								</div>
							</div>
							<div class="rest-area div-2">
								<div class="rest-area">
									<div class="input-lg">받은 시간</div>
								</div>
								<div class="rest-area">
									<div class="input-lg">${ntdto.reg}</div>
								</div>

								<div class="rest-area div-2">
									<div class="rest-area">
										<div class="input-lg">읽은 시간</div>
									</div>
									<div class="rest-area">
										<div class="input-lg">${ntdto.readreg}</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<!-- 해당 부분까지 -->

		<div class="container-30">
			<div class="padding container-70 background-white">
				<div class="padding" style="height: 10%">
					<img src="${pageContext.request.contextPath }/img/noone.jpg"
						class="image-center height-100">;
				</div>
				<hr class="style-one">
				<div class="myrow input-lg">
					<a href="${pageContext.request.contextPath }/member/information">내
						프로필</a>
				</div>
				<div class="myrow input-lg">관심있는 기업</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>