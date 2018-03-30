<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/notes/send" method="post">
<div class="container-800 out-align-center">
<h1>쪽지 보내기</h1>


<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="myrow">
			<div class="input-lg">
				<input type="hidden" name="sender" value="${sender}">
				<input type="text" name="notes_title" placeholder="제목을 입력해 주세요" required>
			</div>
		</div>
		<div class="myrow rest-area">
			<div class="input-lg in-align-right">
				<input type="text" name="notes_to" placeholder="받는 분" required>
			</div>
		</div>
	</div>
<hr class="style-one">
	<div class="myrow div-2" style="height: 116px;">
		<div class="input-lg container-20">내용</div>
		<textarea class="container-100 height-100 textarea" name="contents" required></textarea>
	</div>
	
	<div class="myrow in-align-center">
		<input type="submit" class="button shape-circle" value="보내기">
		<input type="button" class="button shape-circle" value="취소"
			onclick="location.href='${pageContext.request.contextPath }/notes/notes_list'">
	</div>
</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>