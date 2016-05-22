 // landing page message
$(document).ready(function() {
	setTimeout(function() {
		$("#main").removeClass("is-loading");
	}, 100);
});

// menu
$(document).ready(function() {
  $(".menu").click(function(){
    $(this).toggleClass("active");
  });
});
