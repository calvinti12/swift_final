$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $( '#preference_btn').on('click', function(e){
  	e.preventDefault()
  	$('#video_page').hide();
    $( '#payment_plan_page' ).hide();
    flashhide()
  	$('#preference_page').show();	
  })
})

$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $( '#video_btn').on('click', function(e){
  	e.preventDefault()
  	$('#preference_page').hide();
    $( '#payment_plan_page' ).hide();
    flashhide()
  	$.ajax({
      method: 'POST',
  		url: '/video_call' 
  	})
    createSession()
  	$('#video_page').show()
  })
})

$( document ).ready(function(){
  $( '#log_out_div' ).on('click', function(e){
    e.preventDefault()
    $.ajax({
      type: 'PUT',
      url: '/sign_out'
    })
    window.location="/"
  })
})

$( document ).ready(function(){
  $( '#match_btn' ).on('click', function(e){
    e.preventDefault()
    $('#preference_page').hide();
    $( '#payment_plan_page' ).hide();
    flashshow()
  })
})

$( document ).ready(function(){
  $( '#Go_Premium' ).on('click', function(e){
    e.preventDefault()
    $( '#payment_plan_page' ).show();
    flashhide();
  })
})

