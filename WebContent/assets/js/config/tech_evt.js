$(function(){

    var count=0;
    var last_click_lvl=0; // 0:root , 1:category ,2:item
    var selected_item_index=0;
    var selected_category_index=0;
    /**
     * clicked tree
     */
     $(".tree li").click(function(){
         //display none
        $("#modify_btn").css("display","none");
        $("#delete_btn").css("display","none");
        $("#modify_btn").css("display","none");
        $("#cancel_btn").css("display","none");
        $("#parent_category_input").css("display","none");
        $("#skill_name_input").css("display","none");
         //display 
        $("#edit_btn").css("display","inline");
        $("#skill_name_p").css("display","inline");
        $("#parent_category_h").css("display","inline");
        var index = $("li").index(this);
        var txt= $("li:eq(" + index + ")").text();//find("a").text();
        ///////////////// start clicked root /////////////////
        if(count==0 && index==0){
            $("#edit_btn").css("display","none");
            last_click_lvl=0;
            $("#skill_name_p").html("");
            $("#parent_category_h").html("");
            txt=txt.substring(0,txt.indexOf("\n"));
            $("#parent_category_h").text(txt);
            var arr = new Array
            var temp="";
            $("#root > ul > li").each(function(i){
                temp=$(this).text();
                temp=temp.substring(0,temp.indexOf("\n"));
                arr[i]=temp;
            })//each
            $.each(arr,function(i){
                alert(this);
            });
        }//end if
        ///////////////// end clicked root/////////////////
        if(index ==0){ count=0;return;}//end if

        
       
        count++;
        last_click_lvl=count;
        switch(count){
            case 1:
                selected_category_index=index;
                selected_item_index=0;
            break;
            case 2:
                selected_item_index = selected_category_index;
                selected_category_index=index;
            break;
        }//end switch
       
        //기술 상세항목을 누를시
        if(txt.indexOf("\n")==-1){
            $("#skill_name_p").html("<br/>"+txt);
        }else{
            //기술 카테고리를 누를시
            txt=txt.substring(0,txt.indexOf("\n"));
            $("#parent_category_h").text(txt);
            if(count==1)$("#skill_name_p").text("");
        }//end else
    })//click;

    /**
     * clicked edit btn
     */
    $("#edit_btn").click(function(){
        //display
        $("#parent_category_input").val("");
        $("#skill_name_input").val("");
        $("#modify_btn").css("display","inline");
        $("#cancel_btn").css("display","inline");
        //display none
        $("#edit_btn").css("display","none");
        switch(last_click_lvl){
            case 1:
                var parent_category=$("#parent_category_h").text().trim();
                $("#parent_category_h").css("display","none");
                $("#parent_category_input").val(parent_category);
                $("#parent_category_input").css("display","inline");
            break;
            case 2:
                var skill_name=$("#skill_name_p").text().trim();
                $("#skill_name_p").css("display","none");
                $("#skill_name_input").val(skill_name);
                $("#skill_name_input").css("display","inline");
                $("#delete_btn").css("display","inline");
            break;
        }//switch
    });//click;

    /**
     * clicked cancel btn
     */
     $("#cancel_btn").click(function(){
        $("#delete_btn").css("display","none");
        $("#cancel_btn").css("display","none");
        $("#modify_btn").css("display","none");
        $("#edit_btn").css("display","inline");
        switch(last_click_lvl){
            case 1:
                $("#parent_category_h").css("display","inline");
                $("#parent_category_input").css("display","none");
            break;
            case 2:
                $("#skill_name_p").css("display","inline");
                $("#skill_name_input").css("display","none");
            break;
        }
    });//click
});//onload