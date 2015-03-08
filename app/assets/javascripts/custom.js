$(document).ready(function(){

  $("div.map").height( $(".routing").height() );

  $("#aa").click(function(){
    $('#map_address1').after("<p id='stopping_point'><label for='Starting_Point'>Stopping point</label><input type='text' class='input-large' name='map_address' id='map_address' value='Address, City, State, and/or Zip' onclick='if($(this).val()==&quot;Address, City, State, and/or Zip&quot;){$(this).val(&quot;&quot;);};''>"+
    '<button id="removeStoppingPoint" type="button">remove</button></p>');
  });

  // $("#removeStoppingPoint").on('click', function(){
  //   $("p").remove("#stopping_point");
  // });


});


// $('#bb').click(function(){
//   if($('#map_address2').val()=="Address, City, State, and/or Zip"){
//     $('#map_address2').remove();
//   };
// });
