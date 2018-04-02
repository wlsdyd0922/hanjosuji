$(document).ready(function(){
	
	
	
	
	
	
	
	
	
	
	
	$('#search_button').click(function(){
		var company_name = $('input[name=company_name]').val();
		if(company_name==""){
			alert("검색어를 입력하세요");
		}else{
			$.ajax({
				url:'find_company_part',
				dataType:'html',
				data:{'company_name':company_name},
				success:function(result){
					$("#list").html(result);
				}
			});
		}
	});
	
    $("#company_search_button").click(function(event) {
    	event.preventDefault();
    	var url = "/job/register/find_company";
    	var width = 701;
    	var height = 600;
    	var popupX = (window.screen.width / 2) - (width / 2);
    	var popupY = (window.screen.height / 2) - (height / 2);
    	var option = "resizable=no, scrollbars=no, status=no, height=" + height + ", width=" + width + ", left=" + popupX + ", top=" + popupY;
    	window.open(url, 'test', option)
    });
    
    //등록 되지 않은 회사 이름 값 넘기는 법
});

function setCompanyname(name){
	$("#company_name").val(name);
}