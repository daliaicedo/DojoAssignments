$(document).ready(function(){
  console.log("yay")

  $("#gotta-catch-em").click(function(){
    console.log("button works")
    for (var i = 1; i < 152; i++) {
      $('.container').append("<img src=\"http://pokeapi.co/media/img/"+i+".png\"/>")
    }
  });
});
