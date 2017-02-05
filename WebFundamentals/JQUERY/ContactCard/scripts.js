$('form').submit(function(event){
    event.preventDefault();
    var firstname = $("input[name=firstname]").val();
    var lastname = $("input[name=lastname]").val();
    // var description = $("textarea[name=description]").val();
    $('.cards').append("<div class= contactcard><h2>"+firstname+" "+lastname+"</h2><p>(click for description)</p></div>");
  });
    $(".cards").click(function(){
      var description = $("textarea").val();
      $(".contactcard").html("<p>"+description+"</p>");
   });
