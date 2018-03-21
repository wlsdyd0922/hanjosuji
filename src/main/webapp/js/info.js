$(document).ready(function(){
	var loadFile = function(event){
		if(this.files && this.files[0]){
			var reader = new FileReader();
		    reader.onload = function(){
		      var output = document.querySelector("#profile-image");
		      output.src = reader.result;
		      console.log(document.querySelector("#file").value);
		    };
		    reader.readAsDataURL(event.target.files[0]);
		}else{
			document.querySelector("#profile-image").src="/job/img/noone.jpg";
		}
	}
	document.querySelector("#file").addEventListener("change", loadFile);

	
  $("#upload").on("click", function() {
	  console.log("click");
	  var f = document.querySelector("#file");
	  if(!f.files || !f.files[0]){
		  return;
	  }
	  
	  var form = document.querySelector("#fileform");
//	  console.log(form);
	  var formData = new FormData(form);
	  console.log(formData);
	  $.ajax({
		  url : 'upload',
		  type:'POST',
		  data: formData,
		  enctype: "multipart/form-data",
		  contentType: false, // NEEDED, DON'T OMIT THIS (requires jQuery 1.6+)
		  processData: false, // 설정방식을 기본값으로 설정하지 못하게 구현
		  success : function(data) {
			  $("#file").val("");
			  console.log("성공");
		  },
		  error : function(request, status, error) {
			  console.log("실패");
		  }
	  });
  });
});