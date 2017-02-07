$(document).ready(function(){
  console.log("yay")
  $('img').click(function(event) {
    event.preventDefault();

    var requestURI = "http://www.anapioficeandfire.com/api/houses?name=" + event.target.id;
    $.get(requestURI, function(response) {
  });
