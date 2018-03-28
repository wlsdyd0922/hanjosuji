$(function(){
	if($('#grade').val()!="관리자" || $("input[type=email]").val()==sessionStorage.getItem("accept")){
		$('#grade').prop('outerHTML', $('#grade').prop('outerHTML')+$('#grade option:selected').text());
		$('#grade').hide();
	}
});

$(document).ready(function(){
	var phone;
	var pw = true;
	var pwa = true;
	
	$("input[name=pw]").on("input",function(){
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
	$("input[name=pw_again]").on("input",function(){
		var pw = $("input[name=pw]").val();
		if(pw === $(this).val()){
			$(this).css("border-color","deepskyblue");
			pwa=true;
		}else{
			$(this).css("border-color","deeppink");
			pwa=false;
		}
	});
	
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
	$("input[name=phone]").trigger("input");
	$("input[type=submit]").on("click",function(){
		if(phone==true){
			return true;
		}else{
			return false;
		}
	});
});
