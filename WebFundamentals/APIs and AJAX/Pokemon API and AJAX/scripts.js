$(document).ready(function(){
  console.log("yay")
    for (var i = 1; i < 152; i++) {
      $('.pokemon').append("<img id=\""+i+"\" src=\"http://pokeapi.co/media/img/"+i+".png\"/>")
    }
    $('img').click(function(event) {
      event.preventDefault();

      var requestURI = "http://pokeapi.co/api/v1/pokemon/" + event.target.id;
      $.get(requestURI, function(response) {
        $('.right-panel').html("<img id=\""+event.target.id+"\" src=\"http://pokeapi.co/media/img/"+event.target.id+".png\"/>  <br><h2>"+response.name +"</h2><br> <h1>Type:</h1>")
        for (var i = 0; i < response.types.length; i++) {
          var type = response.types[i].name;
          $('.right-panel').append(type +"<br>")
        }
        $('.right-panel').append("<h1>Weight:</h1>" + response.weight)
        $('.right-panel').append("<h1>Height:</h1>" + response.height)
      });


      });
    });
