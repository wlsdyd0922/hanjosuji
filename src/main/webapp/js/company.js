$(function () {
    $(".tab_content").hide();
    $(".tab_content:first").show();

//    $("ul.tabs li").click(function () {
//        $("ul.tabs li").removeClass("active").css("color", "#333");
//        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
//        $(this).addClass("active").css("color", "darkred");
//        $(".tab_content").hide()
//        var activeTab = $(this).attr("rel");
//        $("#" + activeTab).fadeIn()
//    });
});


$(document).ready(function() {
	requestList(2, 1);
	$("#all").on("click",function(){
		requestList(2, 1);
	});
	$("#nokcomp").on("click",function(){
		requestList(0, 1);
	});
	$("#okcomp").on("click",function(){
		requestList(1, 1);
	});
	
	
	
	
	
});
function outno(no,type,pageno){
	$.ajax({
		url:"compdelete",
		data:{no:no},
		success:function(){
			requestList(type,pageno);
		}
	});	
}


//부분 페이지를 가져오는 요청 함수
function requestList(type, page){
	$.ajax({
//		url:"${pageContext.request.contextPath}/admin/compacceptboard_part",
		url:"compacceptboard_part",
		dataType:"html",
		data:{type:type, pageno:page},
		success:function(result){
			$("#tab").html(result);
		}
	});
}



