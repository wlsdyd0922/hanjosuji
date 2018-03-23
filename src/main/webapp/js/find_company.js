$(document).ready(function(){
    $("#show_status").hide();
    
    /*  검색어 받아 오기 */
    $("#search_button").click(function(){
        var search = $("#company_input").val();
        console.log(search);
    });
    
    /* 비교하기 */
    if($("#company_input").val())
    {
       
    }
    else
    {
        $("#show_status").show();
    }
    
    $("#company_search_button").click(function(event) {
    	event.preventDefault();
    	var url = "/job/register/find_company";
    	var width = 400;
    	var height = 400;
    	var popupX = (window.screen.width / 2) - (width / 2);
    	var popupY = (window.screen.height / 2) - (height / 2);
    	var option = "resizable=no, scrollbars=no, status=no, height=" + height + ", width=" + width + ", left=" + popupX + ", top=" + popupY;
    	
    	window.open(url, 'test', option)
    });
});
