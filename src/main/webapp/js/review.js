$(function() {

	$(".tab_content").hide(); // tab_content 부분을 "전부" 숨김
	$(".tab_content:first").show(); // tab_content 전부 숨긴 것 중에 가장 첫번째 보여줌

	$("ul.tabs li").click(function() { // ul.tabs li 부분에 클릭 이벤트 생성
		$("ul.tabs li").removeClass("active").css("color", "#333"); // ul.tabs
																	// li 에
																	// "active"클래스를
																	// 삭제한다.
		$(this).addClass("active").css("color", "darkred"); // ul.tabs li 에
															// "active"클래스 대입
		$(".tab_content").hide()
		var activeTab = $(this).attr("rel");
		 $("#" + activeTab).fadeIn()
	});
});