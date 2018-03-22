$(document).ready(function() {
	$("#search_button").click(function(event) {
		event.preventDefault();
		var url = "/job/register/search_company";
        var width = 400;
        var height = 400;
        var popupX = (window.screen.width / 2) - (width / 2);
        var popupY = (window.screen.height / 2) - (height / 2);
        var option = "resizable=no, scrollbars=no, status=no, " +
        		"height=" + height + ", width=" + width + ", left=" + popupX + ", top=" + popupY;
        var popupWindow = window.open(url, 'test', option)
        popupWindow.focus();
	});
});
    