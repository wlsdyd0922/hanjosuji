$(document).ready(function() {
	var id = false;
	var pw = false;
	var pwa = false;
	var phone = false;
	var ans = false;
	$("input[name=email]").on("input", function() {
		var regex = /^\w{6,15}$/;
		if (!$(this).val()) {
			$(this).css("border-color", "#ccc");
		} else if (regex.test($(this).val())) {
			$(this).css("border-color", "deepskyblue");
			id = true;
		} else {
			$(this).css("border-color", "deeppink");
			id = false;
		}
	});
	$("input[name=password]").on("input", function() {
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
	$("input[name=password_again]").on("input", function() {
		var pw = $("input[name=password]").val();

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

	$("input[name=email]").on("blur", function() {
		var email = $(this).val();
		$.ajax({
			url : 'chksameid',
			data : {"email" : email},
			dataType : 'json',
			success : function(data) {
				if(id){
					if($.trim(data) == 0){
						$("#checkMsg").html('<p style="color:blue">이 아이디는 사용이 가능합니다.</p>');
					}else{
						$("#checkMsg").html('<p style="color:red">이 아이디는 사용중 입니다.</p>');
						$("input[name=email]").css("border-color", "deeppink");
						id = false;
					}
				}else{
					$("#checkMsg").html('<p style="color:red">아이디는 6~15글자 및 영문</p>');
				}
				
			},
			error : function(request, status, error) {}
		});
	});

	$("input[name=pwAns]").on("input", function() {
		if (!$(this).val()) {
			$(this).css("border-color", "#ccc");
			ans = false;
		} else if ($(this).val()) {
			$(this).css("border-color", "deepskyblue");
			ans = true;
		}
	});

	// $("input[type=submit]").on("click",function(){
	// if(id===true&&pw===true&&pwa===true&&phone===true&&ans===true){
	// console.log("모두 통과");
	// return true;
	// }else{
	// console.log("불가능");
	// return false;
	// }
	// });
});