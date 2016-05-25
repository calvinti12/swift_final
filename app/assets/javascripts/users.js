$(document).ready(function(){
  $("#age-range").slider({
    range: true,
    min: 18,
    max: 100,
    values: [18, 99],
    slide: function(event, ui) {
      $( "#ageRange" ).val( ui.values[ 0 ] + " - " + ui.values[ 1 ] );
    }
  });

  $( "#ageRange" ).val( $( "#age-range" ).slider( "values", 0 ) + '-' + $( "#age-range" ).slider( "values", 1 ) );
});

  $( '#submit_edit').on('click', function(e){
    e.preventDefault();
    // var id = //current_user
    var inter1 = document.getElementById("checkbox-1").value;
    var inter2 = document.getElementById("checkbox-2").value;
    var inter3 = document.getElementById("checkbox-3").value;

    var interIn = inter1 + inter2 + inter3;
    var id = document.getElementById("submit_edit").value

    var data = {
      country: document.getElementById("f-country").value,
      state: document.getElementById("f-state").value,
      city: document.getElementById("f-city").value,
      gender: document.getElementById("f-gender").value,
      age: document.getElementById("f-age").value,
      height: document.getElementById("f-height").value,
      description: document.getElementById("f-notes").value,
      prefAge: document.getElementById("ageRange").value,
      interIn: interIn
    }

    $.ajax({
      url: '/users/' + id, 
      data: data,
      type: 'PATCH',
    })
    $('#preference_page').hide();
  })