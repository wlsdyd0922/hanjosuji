<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<script src="/job/js/jquery-1.11.3.min.js"></script>
<script src="/job/js/star.js"></script>
<form action="${pageContext.request.contextPath }/company/review_detail" method="post">
	<div class="out-align-center" style="width: 650px;">
		<div class="div-2">
			<div class="container-600 input-lg font-big">
				<div class="in-align-center">기업평점</div>
			</div>
			<div class="container-100">
				<span class="star-input"> 
				<span class="input"> 
				<input type="radio" name="grade" value="1" id="p1"> <label for="p1">1</label> 
				<input type="radio" name="grade" value="2" id="p2"> <label for="p2">2</label> 
				<input type="radio" name="grade" value="3" id="p3"> <label for="p3">3</label> 
				<input type="radio" name="grade" value="4" id="p4"> <label for="p4">4</label> 
				<input type="radio" name="grade" value="5" id="p5"> <label for="p5">5</label>
				</span> <output for="star-input">
						<b>0</b>점
					</output>
				</span>
			</div>
		</div>
	</div>
	<div class="out-align-center" style="width: 850px;">
		<div class="div-2 height-200 padding">
			<div class="container-20 input-lg">
				<div class="in-align-center">기업한줄평</div>
			</div>
			<div class="rest-area">
				<textarea name="onecomment" class="container-100 height-100 textarea shape-circle"></textarea>
			</div>
		</div>
		<div class="div-2 height-200 padding">
			<div class="container-20 input-lg">
				<div class="in-align-center">경영진에 바라는 점</div>
			</div>
			<div class="rest-area">
				<textarea name="hopecomment" class="container-100 height-100 textarea shape-circle"></textarea>
			</div>
		</div>
		<div class="div-2">
			<div class="input-lg font-big container-20">
				<div class="in-align-center">복지 및 급여</div>
			</div>
			<div class="container-80">
				<div class="in-align-center">
					<span class="star-input"> 
					<span class="input"> 
					<input type="radio" name="welfare" value="1" id="p6"><label for="p6">1</label> 
					<input type="radio" name="welfare" value="2" id="p7"> <label for="p7">2</label> 
					<input type="radio" name="welfare" value="3" id="p8"> <label for="p8">3</label> 
					<input type="radio" name="welfare" value="4" id="p9"> <label for="p9">4</label> 
					<input type="radio" name="welfare" value="5" id="p10"> <label for="p10">5</label>
					</span> 
					<output for="star-input"><b>0</b>점</output>
					</span>
				</div>
			</div>
		</div>
		<div class="div-2">
			<div class="input-lg font-big container-20">
				<div class="in-align-center">업무와 삶의 균형</div>
			</div>
			<div class="container-80">
				<div class="in-align-center">
					<span class="star-input"> <span class="input"> 
						<input type="radio" name="balance" value="1" id="p11"> <label for="p11">1</label> 
						<input type="radio" name="balance" value="2" id="p12"> <label for="p12">2</label> 
						<input type="radio" name="balance" value="3" id="p13"> <label for="p13">3</label> 
						<input type="radio" name="balance" value="4" id="p14"> <label for="p14">4</label> 
						<input type="radio" name="balance" value="5" id="p15"> <label for="p15">5</label>
					</span> 
						<output for="star-input"><b>0</b>점</output>
					</span>
				</div>
			</div>
		</div>
		<div class="div-2">
			<div class="input-lg font-big container-20">
				<div class="in-align-center">경영진</div>
			</div>
			<div class="container-80">
				<div class="in-align-center">
					<span class="star-input"> <span class="input"> 
						<input type="radio" name="executive" value="1" id="p16"> <label for="p16">1</label> 
						<input type="radio" name="executive" value="2" id="p17"> <label for="p17">2</label> 
						<input type="radio" name="executive" value="3" id="p18"> <label for="p18">3</label> 
						<input type="radio" name="executive" value="4" id="p19"> <label for="p19">4</label> 
						<input type="radio" name="executive" value="5" id="p20"> <label for="p20">5</label>
					</span> 
					<output for="star-input"><b>0</b>점</output>
					</span>
				</div>
			</div>
		</div>
		<div class="div-2">
			<div class="input-lg font-big container-40">
				<div class="in-align-center">이 기업을 친구에게 추천하겠습니까?</div>
			</div>
			<div class="container-60 input-lg">
				<div class="in-align-center">
<!-- 추천 1:예 , 2:아니오 -->
					<input type="radio" name="recommend" id="answer1" value="1"
						required> <label for="answer1">예</label> <input
						type="radio" name="recommend" id="answer2" value="2" required>
					<label for="answer2">아니요</label>
				</div>
			</div>
		</div>
		<hr class="style-one">
		<div class="div-2">
			<div class="container-100">
				<input type="button" class="button shape-circle" value="뒤로가기"
					onclick="location.href='${pageContext.request.contextPath }/company/review'">
			</div>
			<div class="container-100">
				<div class="in-align-right">
					<input type="submit" class="button shape-circle" value="제출하기">
				</div>
			</div>
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>