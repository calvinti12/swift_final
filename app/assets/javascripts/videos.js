function startTimer () {
var totaltime = 20;
function update(percent){
  var deg;
  if(percent<(totaltime/2)){
    deg = 90 + (360*percent/totaltime);
      $('.pie').css('background-image',
                'linear-gradient('+deg+'deg, transparent 50%, white 50%),linear-gradient(90deg, white 50%, transparent 50%)'
               );
  } else if(percent>=(totaltime/2)){
          deg = -90 + (360*percent/totaltime);
          $('.pie').css('background-image',
                'linear-gradient('+deg+'deg, transparent 50%, #1fbba6 50%),linear-gradient(90deg, white 50%, transparent 50%)'
               );
          }
}
var less = 1
var count = parseInt($('#time').text());
myCounter = setInterval(function () {

  count-=less;
  $('#time').html(count);
    update(count); 

  if(count==0){       // trigger events when timer runs out 
    less = 0
    disconnect()
    $('.video_page_container').hide();
    $('#like_page').show();

    }; // find proper fix for this issue. javascript won't stop :(
  // if(count==0) clearInterval(myCounter);
}, 1000);
};



// Initialize an OpenTok Session object
var session = TB.initSession(sessionId);

function createSession() {
// Initialize a Publisher, and place it into the element with id="publisher"
var publisher = TB.initPublisher(apiKey, 'publisher', {width: 120, height: 90});


// Attach event handlers
session.on({

  // This function runs when session.connect() asynchronously completes
  sessionConnected: function(event) {
    // Publish the publisher we initialzed earlier (this will trigger 'streamCreated' on other
    // clients)
    session.publish(publisher, 'publisher', {width: 120, height: 90});
  },

  // This function runs when another client publishes a stream (eg. session.publish())
  streamCreated: function(event) {
    // Create a container for a new Subscriber, assign it an id using the streamId, put it inside
    // the element with id="subscribers"
    var subContainer = document.createElement('div');
    subContainer.id = 'stream-' + event.stream.streamId;
    document.getElementById('subscribers').appendChild(subContainer);

    // Subscribe to the stream that caused this event, put it inside the container we just made
    session.subscribe(event.stream, 'subscribers', {width: 480, height: 320}, startTimer);
  }


});
// }
// // Connect to the Session using the 'apiKey' of the application and a 'token' for permission
// function connectSession() {
session.connect(apiKey, token);
}

function disconnect() {
  session.disconnect();

  session.on("sessionDisconnected", function(event){
  console.log("sessionDisconnected event fired");
  // Session has been disconnected. Include any clean up code here
  });
}





function popuplike() {                          // popup the like fomr after video end 
    $("#like").show();
}

function timerhide() {                          // hide the timer after the video has finished
	$("#timer").hide();
}

function videohide() {                          // hide the video after the timer has finished 
	$("#publisher").hide()
	$("#subscribers").hide()
}

function leavehide() {                          // hide the video after the timer has finished 
  $("#leave_btn").hide()
}
function videoShow() {
  $("#publisher").show()
  $("#subscribers").show()
}

$( document ).ready(function(){                 // when leave button is clicked, disconnect from server
  $('body').on('click', '#leave_btn' , function(e){
    e.preventDefault();
    $('.video_page_container').hide();
    flashshow();
    $.ajax({
      method: 'POST',
      url: '/render_video'
    })
    disconnect();
  })
})

$( document ).ready(function(){
  $ ( '#match-yes-btn' ).on('click', function(e){
    e.preventDefault();
    debugger
    flashshow();
    $('#like_page').hide();
    $('#like').hide();
    $.ajax({
      method: 'POST',
      url: '/render_video'
    })
  })
});

$( document ).ready(function(){
  $ ( '#match-no-btn' ).on('click', function(e){
    e.preventDefault();
    flashshow();
    $('#like_page').hide();
    $('#like').hide();
    disconnect();
  })
});

