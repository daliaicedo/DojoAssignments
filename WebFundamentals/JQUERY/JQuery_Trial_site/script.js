 $(document).ready(function () {
   $('#click').click(function(){
     alert("You have clicked the text good job!");
   });
    $("#hide").click(function(){
    $(this).hide();
  });
  $("#show").click(function(){
    $("#hide").show();
  });
  $("#toggle").click(function(){
    $("#example").toggle();
  });
  $("#button1").click(function(){
      $("#slideText").slideUp();
  });
  $("#button2").click(function(){
        $("#slideText").slideDown();
    });
    $("#slideTog").click(function(){
        $("#toggleText").slideToggle();
    });
    $("#fadeInBtn").click(function(){
        $("#fadedText").fadeIn()
    });
    $("#fadeOutBtn").click(function(){
        $("#fadedText").fadeOut();
    });
    $("#classAdd").click(function(){
        $(".pOne").addClass("pTwo");
    });
    $("#beforeBtn").click(function(){
        $("#beforeP").before("<p>the magic text that appears before</p>");
    });
    $("#afterBtn").click(function(){
        $("#beforeP").after("<p>the magic text that appears after</p>");
    });
    $("#appendBtn").click(function(){
        $("ul").append("<li>Appended item</li>");
    });
    $("#htmlChanger").click(function(){
        $("#text2change").html("Hello <b>world!</b>");
    });
    $("#attrChanger").click(function(){
        $("img").attr("height", "175px");
    });
    $("#addName").click(function(){
        $("input:text").val("Moose Mulder");
    });
    $("#changeText").click(function(){
        $("#pText").text("Hello Moose!");
    });
    $("#btn1").click(function(){
        $("div").data("greeting", "This assignment was created by Dalia");
    });
    $("#btn2").click(function(){
        alert($("div").data("greeting"));
    });


 })
