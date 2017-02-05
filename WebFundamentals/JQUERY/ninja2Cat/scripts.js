$(document).hover(function(){
  $("img").click(function(){
  $(this).attr('src', $(this).attr('data-alt-src')));
  });
});



// $('img').hover(function() {
//
//   $(this).css('color', 'white');
//   },
//
//   function() {
//   $(this).css('color', 'black');
// });
