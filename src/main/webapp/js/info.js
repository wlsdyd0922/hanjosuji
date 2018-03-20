$("#upload").on("submit", function() {
		var file = $("input[type=file]").val();
		$.ajax({
			url : 'information',
			data : {"file" : file},
			dataType : 'json',
			type: 'POST',
			success : function(data) {},
			error : function(request, status, error) {}
		});
	});