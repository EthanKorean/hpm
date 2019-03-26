$(function(){

    $("li").click(function(){
        var index = $("li").index(this);
        $("li:eq(" + index + ")");
        $("li:eq(" + index + ")");
        alert(this.value());
    })//;


});//onload