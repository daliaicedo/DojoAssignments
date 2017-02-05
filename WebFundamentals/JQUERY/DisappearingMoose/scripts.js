$(document).ready(function(){
    $("img").click(function(){
        $(this).hide();
    });
    $("#restoreBtn").click(function(){
        $("img").show();
    });
});
