$(document).ready(function() {
	var pw = true;
	$("form").on("submit", function(e){
		if(pw){
			$("input[type=password]").val(SHA256($("input[type=password]").val()));
			return true;
		}
	});
});