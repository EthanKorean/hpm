$(function(){

    var count=0;
    var last_click_lvl=0;
    $(".tree li").click(function(){
        $("#edit_btn").css("display","");
        $("#skill_name_p").css("display","");
        $("#parent_category_h").css("display","");
        $("#parent_category_input").css("display","none");
        $("#skill_name_input").css("display","none");
        
        var index = $("li").index(this);
        if(index ==0){ count=0;return;}//end if
        
        var txt= $("li:eq(" + index + ")").text();//find("a").text();
        count++;
        last_click_lvl=count;
        if(txt.indexOf("\n")==-1){
            $("#skill_name_p").text(txt);
        }else{
            txt=txt.substring(0,txt.indexOf("\n"));
            $("#parent_category_h").text(txt);
            if(count==1)$("#skill_name_p").text("");
        }//end else
    })//click;


    $("#edit_btn").click(function(){
        $("#parent_category_input").val("");
        $("#skill_name_input").val("");
        
        $("#parent_category_h").css("display","none");
        $("#skill_name_p").css("display","none");
        
        var skill_name=$("#skill_name_p").text().trim();
        var parent_category=$("#parent_category_h").text().trim();
        
        $("#parent_category_input").val(parent_category);
        $("#skill_name_input").val(skill_name);
        $("#parent_category_input").css("display","");
        $("#skill_name_input").css("display","");
    });//click;
});//onload