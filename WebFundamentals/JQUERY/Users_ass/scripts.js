$(document).ready(function(){
  $('form').submit(function(event){
    event.preventDefault();
    var firstname = $("input[name=firstname]").val();
    var lastname = $("input[name=lastname]").val();
    var email = $("input[name=email]").val();
    var contactnumber = $("input[name=contactnumber]").val();
    $('table').append("<tr><td>"+
      firstname+
      "</td><td>"+
      lastname
      +"</td><td>"+
      email+
      "</td><td>"+
      contactnumber+
      "</td></tr>");
    //
  });
});


//sort by
//append
