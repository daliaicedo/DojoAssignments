$(document).ready(function(){
    $("img").hover(function(){
        $(this).hide();
    });
    $("#restoreBtn").click(function(){
        $("img").show();
    });
});
