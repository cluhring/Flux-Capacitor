$(document).ready(function(){

  $("#aa").click(function(){
    $('#map_address1').after("<p id='stopping_point'><br><label for='Starting_Point'>Stopping point</label><input type='text' class='input-large' name='map_address' id='map_address' value='Address, City, State, and/or Zip' onclick='if($(this).val()==&quot;Address, City, State, and/or Zip&quot;){$(this).val(&quot;&quot;);};''>"+
    '<button id="removeStoppingPoint" type="button">remove</button></div></p>');
  });

  $("#removeStoppingPoint").on('click', function(){
    $("p").remove("#stopping_point");
  });


});


  //
  // $("#aa").click(function(){
  //   $("<input type='text' class='input-large' name='map_address' id='map_address' value='Address, City, State, and/or Zip' onclick='if($(this).val()==&quot;Address, City, State, and/or Zip&quot;){$(this).val(&quot;&quot;);};''>").appendTo('#map_address1');
  // });


// $('#bb').click(function(){
//   if($('#map_address2').val()=="Address, City, State, and/or Zip"){
//     $('#map_address2').remove();
//   };
// });
