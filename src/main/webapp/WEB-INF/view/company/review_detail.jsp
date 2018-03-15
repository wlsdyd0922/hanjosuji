<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="#" method="post">
	<div class="out-align-center" style="width: 650px;">
		<div class="div-2">
			<div class="container-100 input-lg font-big">
				<div class="in-align-center">기업평점</div>
			</div>
			<div class="container-100">
				<span class="star-input"> <span class="input"> <input
						type="radio" name="company-score" value="1" id="p1"> <label
						for="p1">1</label> <input type="radio" name="company-score"
						value="2" id="p2"> <label for="p2">2</label> <input
						type="radio" name="company-score" value="3" id="p3"> <label
						for="p3">3</label> <input type="radio" name="company-score"
						value="4" id="p4"> <label for="p4">4</label> <input
						type="radio" name="company-score" value="5" id="p5"> <label
						for="p5">5</label>
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
				<textarea class="container-100 height-100 textarea shape-circle"></textarea>
			</div>
		</div>
		<div class="div-2 height-200 padding">
			<div class="container-20 input-lg">
				<div class="in-align-center">경영진에 바라는 점</div>
			</div>
			<div class="rest-area">
				<textarea class="container-100 height-100 textarea shape-circle"></textarea>
			</div>
		</div>
		<div class="div-2">
			<div class="input-lg font-big container-20">
				<div class="in-align-center">복지 및 급여</div>
			</div>
			<div class="container-80">
				<div class="in-align-center">
					<span class="star-input"> <span class="input"> <input
							type="radio" name="company-score" value="1" id="p1"> <label
							for="p1">1</label> <input type="radio" name="company-score"
							value="2" id="p2"> <label for="p2">2</label> <input
							type="radio" name="company-score" value="3" id="p3"> <label
							for="p3">3</label> <input type="radio" name="company-score"
							value="4" id="p4"> <label for="p4">4</label> <input
							type="radio" name="company-score" value="5" id="p5"> <label
							for="p5">5</label>
					</span> <output for="star-input">
							<b>0</b>점
						</output>
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
					<span class="star-input"> <span class="input"> <input
							type="radio" name="company-score" value="1" id="p1"> <label
							for="p1">1</label> <input type="radio" name="company-score"
							value="2" id="p2"> <label for="p2">2</label> <input
							type="radio" name="company-score" value="3" id="p3"> <label
							for="p3">3</label> <input type="radio" name="company-score"
							value="4" id="p4"> <label for="p4">4</label> <input
							type="radio" name="company-score" value="5" id="p5"> <label
							for="p5">5</label>
					</span> <output for="star-input">
							<b>0</b>점
						</output>
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
					<span class="star-input"> <span class="input"> <input
							type="radio" name="company-score" value="1" id="p1"> <label
							for="p1">1</label> <input type="radio" name="company-score"
							value="2" id="p2"> <label for="p2">2</label> <input
							type="radio" name="company-score" value="3" id="p3"> <label
							for="p3">3</label> <input type="radio" name="company-score"
							value="4" id="p4"> <label for="p4">4</label> <input
							type="radio" name="company-score" value="5" id="p5"> <label
							for="p5">5</label>
					</span> <output for="star-input">
							<b>0</b>점
						</output>
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
					<input type="radio" name="answer" id="answer1" value="answer1"
						required> <label for="answer1">예</label> <input
						type="radio" name="answer" id="answer2" value="answer2" required>
					<label for="answer2">아니요</label>
				</div>
			</div>
		</div>
		<hr class="style-one">
		<div class="div-2">
			<div class="container-100">
				<input type="button" class="button shape-circle" value="뒤로가기"
					onclick="">
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