$(document).ready(function() {
	var id = false;
	var pw = false;
	var pwa = false;
	var phone = false;
	var ans = false;
	var name = false;
	var company = false;
	$("input[name=email]").on("blur", function() {
		var email = $(this).val();
		$.ajax({
			url : 'chksameid',
			data : {"email" : email},
			dataType : 'json',
			success : function(data) {
				if(id){
					console.log("dada",data)
					if($.trim(data) == 0){
						$("#checkMsg").html('<p style="color:blue">이 아이디는 사용이 가능합니다.</p>');
					}else{
						$("#checkMsg").html('<p style="color:red">이 아이디는 사용중 입니다.</p>');
						$("input[name=email]").css("border-color","deeppink");
						console.log("들어옴")
						id=false;
					}
				}else{
					$("#checkMsg").html('<p style="color:red">아이디는 6~15글자 및 영문</p>');
				}
			},
		});
	});
	
	//아이디 글자 확인..(추후 email로 regex 변경)
	$("input[name=email]").on("input",function(){
		console.log("id", id)
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
	
	$("input[name=pw]").on("input", function() {
		var regex = /^\w{6,15}$/;
		if (!$(this).val()) {
			$(this).css("border-color", "#ccc");
		} else if (regex.test($(this).val())) {
			$(this).css("border-color", "deepskyblue");
			pw = true;
		} else {
			$(this).css("border-color", "deeppink");
			pw = false;
		}
	});
	// 비번확인 이벤트
	$("input[name=pw_again]").on("input", function() {
		var pw = $("input[name=pw]").val();

		if (pw === $(this).val()) {
			$(this).css("border-color", "deepskyblue");
			pwa = true;
		} else {
			$(this).css("border-color", "deeppink");
			pwa = false;
		}
	});
	// 전화번호 확인
	$("input[name=phone]").on("input", function() {
		var regex = /^\d{10,11}$/;
		if (!$(this).val()) {
			$(this).css("border-color", "#ccc");
		} else if (regex.test($(this).val())) {
			$(this).css("border-color", "deepskyblue");
			phone = true;
		} else {
			$(this).css("border-color", "deeppink");
			phone = false;
		}
	});
	
	$("input[name=name]").on("input", function() {
		var regex = /^[가-힣]{2,4}$/;
		if (!$(this).val()) {
			$(this).css("border-color", "#ccc");
		} else if (regex.test($(this).val())) {
			$(this).css("border-color", "deepskyblue");
			name = true;
		} else {
			$(this).css("border-color", "deeppink");
			name = false;
		}
	});


	$("input[name=pwans]").on("input", function() {
		if (!$(this).val()) {
			$(this).css("border-color", "#ccc");
			ans = false;
		} else if ($(this).val()) {
			$(this).css("border-color", "deepskyblue");
			ans = true;
		}
	});
	
	 $("input[type=submit]").on("click",function(){
		 if(id===true&&pw===true&&pwa===true&&phone===true&&ans===true&&name===true){
			 var pw = SHA256($("input[name=pw]").val());
			 $("input[name=pw]").val(pw);
			 
//			 var pwa = SHA256($("input[name=pw_again]").val());
//			 $("input[name=pw_again]").val(pwa);
			 
			 var pwan = SHA256($("input[name=pwans]").val());
			 $("input[name=pwans]").val(pwan);
			 
			 console.log("모두 통과");
			 return true;
		 }else{
			 colsole.log()
			 console.log("불가능");
			 return false;
		 }
	 });
});