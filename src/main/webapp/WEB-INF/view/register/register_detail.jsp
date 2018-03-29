<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="company" value="${not empty company}"></c:set>
<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath }/register/register_detail" method="post">
<input type="hidden" name="email" value="${sessionScope.accept }">
	<div class="container-500 out-align-center">

		<c:if test="${!company }">
			<div class="myrow input-group input-group-lg">
				<span class="input-group-addon" id="sizing-addon1"> 
					<i class="glyphicon glyphicon-text-size"></i>
				</span> 
				<input type="text" class="form-control" name="edu" value="${rdto.edu }" placeholder="졸업한 학교를 입력하세요">
			</div>
		</c:if>
		<script>
			$(document).ready(function(){
				choose_select("favdivision");
				choose_select("favregion");
				radio_button();
			});
			
			function choose_select(data_value){
				/* 1. 데이터베이스에 입력된 데이터 값을 불러 온다.*/
			    var choice = $("select[name="+ data_value +"]").attr("data-value");
			    /* 2. 데이터베이스에의 값을 초기값으로 입력한다.*/
			    $("select[name="+ data_value +"]").val(choice);
			};
			
			function radio_button(){
				/* 1. 데이터베이스에 입력된 데이터 값을 불러 온다.*/
				var choice = $("#workingstatus").attr("data-value");
				console.log(choice);
				if(choice === "신입"){
					$("#workingstatus label input").eq(0).attr("checked","checked");
				}
				else if(choice === "경력") {
					$("#workingstatus label input").eq(1).attr("checked","checked");
				}
				
				$("#workingstatus label input").click(function(){
					var select = $(this).val();
					console.log(select);
					if(select === "new"){
						console.log(1);
						$("#workingstatus label input").eq(0).attr("checked","checked");
					}
					else if(select === "exp") {
						console.log(2);
						$("#workingstatus label input").eq(1).attr("checked","checked");
					}
				});
				
			}
		</script>
		<div class="myrow">
			<div class="form-group">
				<select name="favdivision" class="form-control input-lg" data-value="${rdto.favdivision}">
					<option>경영/사무</option>
					<option>영업/고객상담</option>
					<option>IT/인터넷</option>
					<option>디자인</option>
					<option>서비스</option>
					<option>전문직</option>
					<option>의료</option>
					<option>생산/제조</option>
					<option>건설</option>
					<option>유통/무역</option>
					<option>미디어</option>
					<option>교육</option>
					<option>특수계층/공공</option>
				</select>
			</div>
			<div class="form-group">
				<select name="favregion" class="form-control input-lg" data-value="${rdto.favregion}">
					<option>서울</option>
					<option>경기</option>
					<option>인천</option>
					<option>부산</option>
					<option>대구</option>
					<option>광주</option>
					<option>대전</option>
					<option>울산</option>
					<option>세종</option>
					<option>강원</option>
					<option>경남</option>
					<option>경북</option>
					<option>전남</option>
					<option>전북</option>
					<option>충남</option>
					<option>충북</option>
					<option>제주</option>
					<option>전국</option>
				</select>
			</div>
		</div>

		<c:if test="${!company }">
			<div class="myrow div-2">
				<div class="form-input div-ratio2">현재 본인의 상태를 체크해 주세요.</div>
				<div id = "workingstatus" class="form-input div-ratio1 in-align-right" data-value="${rdto.workingstatus }">
					<label class="radio-inline"> 
						<input type="radio" name="workingstatus" value="new"> 신입
					</label> 
					<label class="radio-inline"> 
						<input type="radio" name="workingstatus" value="exp"> 경력
					</label>
				</div>
			</div>
			<div class="myrow">
				<div class="form-group">
					<label for="comment"><h4>수상경력</h4></label>
					<textarea class="form-control textarea" rows="2" name="prize">${rdto.prize }</textarea>
				</div>
			</div>
			<div class="myrow">
				<div class="form-group">
					<label for="comment"><h4>자격증</h4></label>
					<textarea class="form-control textarea" rows="2" name="certi">${rdto.certi }</textarea>
				</div>
			</div>
			<div class="myrow">
				<div class="form-group">
					<label for="comment"><h4>포트폴리오</h4></label>
					<textarea class="form-control textarea" rows="2" name="portfolio">${rdto.portfolio }</textarea>
				</div>
			</div>
		</c:if>

		<div class="myrow div-2">
			<input class="btn btn-primary btn-lg form-btn-full" type="submit" value="수정"> 
			<input class="btn btn-primary btn-lg form-btn-full" type="button" value="돌아가기" onclick="location.href='javascript:history.back()'">
		</div>
	</div>
</form>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>