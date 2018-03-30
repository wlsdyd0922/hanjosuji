$(function () {
    $(".tab_content").hide();
    $(".tab_content:first").show();
});


$(document).ready(function() {
	requestList(2, 1);
	$("#all").on("click",function(){
		requestList(2, 1);
	});
	$("#nokcomp").on("click",function(){
		$("input[type=search]").val("");
		requestList(0, 1);
	});
	$("#okcomp").on("click",function(){
		requestList(1, 1);
	});
});

function compdelete(no,type,pageno){
	$.ajax({
		url:"compdelete",
		data:{no:no},
		success:function(){
			requestList(type,pageno);
		}
	});	
}

function compaccept(no,type,pageno){
	$.ajax({
		url:"compaccept",
		data:{no:no},
		success:function(){
			requestList(type,pageno);
		}
	});	
}

//부분 페이지를 가져오는 요청 함수
function requestList(type, page,sort,search){
	var sort = sort;
	var search = search;
	
	$.each($("form").serializeArray(), function(i, field){
		if(field.name=="sort") {
			sort = field.value;
		}else if(!search){
			search = field.value;
		}
    });
	console.log(sort,search);
	$.ajax({
//		url:"${pageContext.request.contextPath}/admin/compacceptboard_part",
		url:"compacceptboard_part",
		dataType:"html",
		data:{type:type, pageno:page,sort:sort,search:search },
		
		success:function(result){
			$("#tab").html(result);
		}
	});
}
