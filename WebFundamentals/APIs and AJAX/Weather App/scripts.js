$(document).ready(function() {
    $('form').submit(function(event) {
      event.preventDefault();
      // API KEY: 3654a0d3843aa48ecf5a046cfdf3a700;
      var city = $("input[name=city]").val();
      console.log(city);
      console.log("http://api.openweathermap.org/data/2.5/weather?q="+city+"&units=imperial&appid=3654a0d3843aa48ecf5a046cfdf3a700")

      var requestURI = "http://api.openweathermap.org/data/2.5/weather?q=" +city+ "&units=imperial&appid=3654a0d3843aa48ecf5a046cfdf3a700"
      $.get(requestURI, function(res) {
        $('.search-result').html("<h1>"+res.name+"</h1><br><p>"+ res.main.temp+" degrees fahrenheit</p>")
      });
        // $('.search-form')

      //     // your code here
      //}, 'json');
      // // don't forget to return false so the page doesn't refresh
      // return false;
  });
});
