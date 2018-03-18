$(document).ready(function() {
	var id =false;
	var pw =false;
	var pwa=false;
	var phone = false;
	var ans = false;
	//아이디 중복 확인
	$("input[name=email]").on("blur", function() {
		var email = $(this).val();
		$.ajax({
			url : 'register/chksameid',
			data : {"email" : email},
			dataType : 'json',
			success : function(data) {
				if($.trim(data) == 0&&id){
					$("#checkMsg").html('<p style="color:blue">사용가능</p>');
				}else{
					$("#checkMsg").html('<p style="color:red">사용불가능</p>');
				}
			},
			error : function(request, status, error) {}
		});
	});
	
	//아이디 글자 확인..(추후 email로 regex 변경)
	$("input[name=email]").on("input",function(){
		var regex = /^\w{6,15}$/;
		if(!$(this).val()){
			$(this).css("border-color","#ccc");
		}else if(regex.test($(this).val())){
			$(this).css("border-color","deepskyblue");
			id = true;
		}else{
			$(this).css("border-color","deeppink");
			id=false;
		}
	});
	
	//비밀번호 확인
	$("input[name=password]").on("input",function(){
		var regex = /^\w{6,15}$/;
		if(!$(this).val()){
			$(this).css("border-color","#ccc");
		}else if(regex.test($(this).val())){
			$(this).css("border-color","deepskyblue");
			pw = true;
		}else{
			$(this).css("border-color","deeppink");
			pw=false;
		}
	});
	
	//비번확인 이벤트
	$("input[name=password_again]").on("input",function(){
		var pw = $("input[name=password]").val();
		
		if(pw === $(this).val()){
			$(this).css("border-color","deepskyblue");
			pwa=true;
		}else{
			$(this).css("border-color","deeppink");
			pwa=false;
		}
	});
	
	//전화번호 확인
	$("input[name=phone]").on("input",function(){
		var regex = /^\d{10,11}$/;
		if(!$(this).val()){
			$(this).css("border-color","#ccc");
		}else if(regex.test($(this).val())){
			$(this).css("border-color","deepskyblue");
			phone=true;
		}else{
			$(this).css("border-color","deeppink");
			phone=false;
		}
	});
	
	//비번 응답 작성여부 확인
	$("input[name=pwAns]").on("input",function(){
		if(!$(this).val()){
			$(this).css("border-color","#ccc");
			ans=false;
		}else if($(this).val()){
			$(this).css("border-color","deepskyblue");
			ans=true;
		}
	});
	
	//전체가 올바르게 작성되었는지에 따른 form 전송 및 거절
	$("input[type=submit]").on("click",function(){
		if(id===true&&pw===true&&pwa===true&&phone===true&&ans===true){
			return true;
		}else{
			return false;
		}
	});
});