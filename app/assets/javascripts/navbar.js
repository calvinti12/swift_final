$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $( '#preference_btn').on('click', function(e){
  	e.preventDefault()
  	$('#video_page').hide();
  	$('#preference_page').show();	
  })
})

$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $( '#video_btn').on('click', function(e){
  	e.preventDefault()
  	$('#preference_page').hide();
  	$.ajax({
  		url: '/video_call' 
  	})
    connectSession()
  	$('#video_page').show();	
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