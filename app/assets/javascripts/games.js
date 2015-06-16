$(document).ready(function(){
	$("img").on("click", function(){
		if ( $(this).prop("id") ) {
			console.log("Correct!");
			$("section").empty();
			$("h2.correct").append("Correct!");
		}
		else{
			console.log("Incorrect!");
			$("section").empty();
			$("h2.incorrect").append("Incorrect!");
		}
	}); 
});


