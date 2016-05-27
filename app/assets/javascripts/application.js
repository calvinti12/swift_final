// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-1.11.0.min
//= require jquery.leanModal.min
//= require turbolinks
//= require_tree .
//= require videos
//
// $(document).on('ready page:load', function() {
//   return CountryStateSelect({
//     country_id: "country_field_id",
//     state_id: "state_field_id"
//   });
// });



// Preference page//


(function($){
	function floatLabel(inputType){
		$(inputType).each(function(){
			var input = $(this).find("input, select, textarea");
      var label = $(this).find("label");
			// on focus add cladd active to label
			input.focus(function(){
				input.next().addClass("active");
        console.log("focus");
			});
			//on blur check field and remove class if needed
			input.blur(function(){
				if(input.val() === '' || input.val() === 'blank'){
					label.removeClass();
				}
			});
		});
	}
	// just add a class of "floatLabel to any group you want to have the float label interactivity"
	floatLabel(".float-label");


//////  Just a bunch of fluff for other interactions  ////////////////////////////////////////////////////////

  //for the pw field - toggle visibility
  $(".eye").on("click" , function(){
    var $this = $(this);
    if( !$this.is(".show") ){
      $this.addClass("show")
           .removeClass("fa-eye-slash")
           .addClass("fa-eye").next()
           .attr("type" , "text");
    }else{
      $this.removeClass("show")
           .addClass("fa-eye-slash")
           .removeClass("fa-eye")
           .next().attr("type" , "password");
    }
  });

  //modal close
  $(".close").on("click" , function(){
    $(this).parent().removeClass("show");
    $("#clear").click();
  });

  //submit button dirty validation ^-^
  $("button[type='submit']").on("click" , function(){
    if( !$("input, select, textarea").val() ){
      $(this).text("Please enter all Fields");
    }else{
      $(".confirm").addClass("show");
    }
    return false;
  });
  //just for reset button
  $("#clear").on("click" , function(){
    $(".active").removeClass("active");
  });

})(jQuery);


// $( document ).ready(function(){                 // go to video feed with random match
//   $( '#video_btn').on('click', function(e){
//     e.preventDefault();
//     $.ajax({
//       url: '/video_call',
//       type: 'get',                              // loads the variables from the controller
//     })
//     connectSession()                            // connect the session
//     videoShow()                                 // show the video screen 
//   }) 
// })

function flashshow() {                          // hide the video after the timer has finished 
  $("#flashcards").show()
}

function flashhide() {                          // hide the video after the timer has finished 
  $("#flashcards").hide()
}