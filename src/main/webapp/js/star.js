var starRating = function(){
var $star = $(".star-input");
    console.log($star);
    var $result = $star.find("output>b");
	
  	$(document)
	.on("focusin", ".star-input>.input", 
		function(){
   		 $(this).addClass("focus");
 	})
		 
   	.on("focusout", ".star-input>.input", function(){
    	var $this = $(this);
    	setTimeout(function(){
      		if($this.find(":focus").length === 0){
       			$this.removeClass("focus");
     	 	}
   		}, 100);
 	 })
  
    .on("change", ".star-input :radio", function(){
    	//console.log($(this));//라디오
        console.log($(this).val());
        //위로가서 뒤로가서 안에있는 b
        $(this).parent().next().find("b").text($(this).val());
        //$(this).find("output>b").text($(this).next().text());
  	})
    .on("mouseover", ".star-input label", function(){
    	$(this).find("output>b").text($(this).text());
    })
    .on("mouseleave", ".star-input>.input", function(){
    	var $checked = $star.find(":checked");
    		if($checked.length === 0){
     	 		$(this).find("output>b").text("0");
   		 	} else {
     	 		$(this).find("output>b").text($checked.next().text());
    		}
  	});
};

starRating();
