$(document).ready(function(){
		var msg = $("input[type=hidden]").val();
		if(msg){
			alert(msg);
			window.close();
		}
		var loadFile = function(event){
			if(this.files && this.files[0]){
				var reader = new FileReader();
			    reader.onload = function(){
			    	var output = document.querySelector("#profile-image");
			    	output.src = reader.result;
			    	console.log(document.querySelector(".file").value);
			    };
			    reader.readAsDataURL(event.target.files[0]);
			    	var f = document.querySelector(".file");
			    	if(!f.files || !f.files[0]){
			    		return;
			    	}
			    	var form = document.querySelector("#fileform");
			    	var formData = new FormData(form);
			    	console.log(formData);
			}else{
				document.querySelector("#profile-image").src="/job/img/noone.jpg";
			}
		}
		document.querySelector(".file").addEventListener("change", loadFile);
		
		$("#fileform").on("submit",function(){
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
	                document.getElementById('addrloc').value = fullAddr;

	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('addr2loc').focus();
	            }
	        }).open();
		});
});

function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
		return;
	else
		return false;
}
function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}