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
			url : 'chksameid',
			data : {"email" : email},
			dataType : 'json',
			success : function(data) {
				if(id){
					if($.trim(data) == 0){
						$("#checkMsg").html('<p style="color:blue">이 아이디는 사용이 가능합니다.</p>');
					}else{
						$("#checkMsg").html('<p style="color:red">이 아이디는 사용중 입니다.</p>');
					}
				}else{
					$("#checkMsg").html('<p style="color:red">아이디는 6~15글자 및 영문</p>');
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
	
	$("#post").on("click",function(){
		new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
		
	});
});