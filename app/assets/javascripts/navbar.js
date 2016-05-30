$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $( '#preference_btn').on('click', function(e){
  	e.preventDefault()
  	$('#video_page').hide();
    $( '#payment_plan_page' ).hide();
    $( '#payment_braintree' ).hide();
    flashhide()
    $('html,body').scrollTop(0);
  	$('#preference_page').show();	
  })
})

$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $( '#video_btn').on('click', function(e){
  	e.preventDefault()
  	$('#preference_page').hide();
    $( '#payment_plan_page' ).hide();
    $( '#payment_braintree' ).hide();
    flashhide()
  	$.ajax({
      method: 'POST',
  		url: '/video_call' 
  	})
    createSession()
  	$('#video_page').show()
    $('.video_page_container').show();
    $('html,body').scrollTop(0);
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
    $( '#video_page').hide();
    $( '#payment_braintree' ).hide();
    flashshow()
    $('html,body').scrollTop(0);
  })
})

$( document ).ready(function(){
  $( '#Go_Premium' ).on('click', function(e){
    e.preventDefault()
    $( '#payment_plan_page' ).show();
    $('#preference_page').hide();
    $( '#video_page').hide();
    $( '#payment_braintree' ).hide();
    flashhide();
    $('html,body').scrollTop(0);
  })
})

$( document ).ready(function(){
  $( '.button_premium_plan' ).on('click', function(e){
    e.preventDefault()
    $( '#payment_braintree' ).show();
    flashhide();
  })
})
