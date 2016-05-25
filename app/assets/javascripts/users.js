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
