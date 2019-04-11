$(function(){
    /******************************************************************
     * clicked tree
     ******************************************************************/
    
    var count=0;
    var last_click_lvl=0; // 0:root , 1:category ,2:item
    var selected_item_index=0;
    var selected_category_index=0;
    var is_add_btn_clicked = false;
    
     $(".tree li").click(function(){
         //display none
        $("#modify_btn").css("display","none");
        $("#delete_btn").css("display","none");
        $("#modify_btn").css("display","none");
        $("#cancel_btn").css("display","none");
        $("#skill_name_input").css("display","none");
        $("#parent_category_input").css("display","none");
         //display inline
        $("#edit_btn").css("display","inline");
        $("#skill_name_p").css("display","inline");
        $("#parent_category_h").css("display","inline");
        is_add_btn_clicked=false;
        var index = $("li").index(this);
        var txt= $("li:eq(" + index + ")").text();//find("a").text();
        ///////////////// start clicked root /////////////////
        if(count==0 && index==0){
            $("#edit_btn").css("display","none");
            $("#child_list_section").css("display","block");
            $("#skill_name_p").html("");
            $("#parent_category_h").html("");
            last_click_lvl=0;
            txt=txt.substring(0,txt.indexOf("\n"));
            $("#parent_category_h").text(txt);
            var arr = new Array
            var temp="";
            $("#root > ul > li").each(function(i){
                temp=$(this).text();
                temp=temp.substring(0,temp.indexOf("\n"));
                arr[i]=temp;
            })//each
            displyItemList(arr);
            selected_category_index=0;
        }//end if
        ///////////////// end clicked root/////////////////
        //alert(index + ","+ count);
        if(index ==0){ count=0;return;}//end if
        count++;
        last_click_lvl=count;
        switch(count){
            case 1:
                selected_category_index=index;
                selected_item_index=0;
                 $("#child_list_section").css("display","block");
            break;
            case 2:
                selected_item_index = selected_category_index;
                selected_category_index=index;
                $("#child_list_section").css("display","none");
            break;
        }//end switch
        
        //  트리를 누르시 기술 아이템을 누르면 개행문자가 없기 때문에 \n 을 찾으면 -1 
        //  하지만 기술 카테고리를 누를시에는 아래 항목들에대해 개행문자가 있다.
        //  기술 상세항목을 누를시
        if(txt.indexOf("\n")==-1){
            $("#skill_name_p").html("<br/>"+txt);
        }else{
            //  기술 카테고리를 누를시
            txt=txt.substring(0,txt.indexOf("\n"));
            $("#parent_category_h").text(txt);
            if(count==1){
                $("#skill_name_p").text("");
            }//end if
            var arr = new Array
            var temp="";
            $("li:eq(" + index + ") > ul > li").each(function(i){
                temp=$(this).text();
                arr[i]=temp;
            })//each
            displyItemList(arr);
        }//end else
         $('html, body').stop().animate({
            scrollTop: $("#skill_detail").offset().top-30
            }, 300);
    })//click;

    /******************************************************************
     * clicked edit btn
     ******************************************************************/
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

    /******************************************************************
     * clicked cancel btn
     ******************************************************************/
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
        }//end switch
    });//click

    /******************************************************************
     * clicked add btn
     ******************************************************************/
    $("#add_btn").click(function(){
        if(is_add_btn_clicked){return;}
        is_add_btn_clicked=true;
        $("#item_list").append("<li>"+
        "<span>"+
        "<input type='text' name='input_item' style='display:inline' />"+
        "<a href='javascript:void(0)' id='save_adding_item' style='display:inline;rigth:0px'>저장</a>&nbsp;&nbsp;"+
        "<a href='javascript:void(0)' id='cancel_adding_item' style='display:inline;rigth:0px'>취소</a>"+
        "</span>"+
        "</li>");
        $("#cancel_adding_item").click(function(){
            $("#item_list > li:last").remove();
            is_add_btn_clicked=false;
        })//click::cancel
        $("#save_adding_item").click(function(){
            var txt=$("input[name=input_item]").val();
            $("#item_list > li:last").remove();
            is_add_btn_clicked=false;
            if(txt.trim()==""){
                return;
            }//end if
            $("#item_list").append("<li>"+txt+"</li>");
            
            
            if(selected_category_index!=0){
            	//$("li:eq("+selected_category_index+")").children("ul").append("txt")
            	
                $("li:eq("+selected_category_index+") > ul")
                .append("<li class='item tree-empty'><span class='toggler'></span><a href='javascript:void(0)'>"+txt+"</a></li>");
            }else{
                 $("#root > ul")
                .append("<li class='categroy tree-closed'><span class='toggler'></span><a href='javascript:void(0)'>"+txt+"</a>"+
                "<ul class='treemenu'></ul></li>");
                $("#root").trigger("click");
            }//end elses

        })//click::save
    })//click

    /******************************************************************
     * clicked delete btn
     ******************************************************************/
    $("#delete_btn").click(function(){

    })//click

    /******************************************************************
     * clicked modify btn
     ******************************************************************/
    $("#modify_btn").click(function(){
        
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
        }//end switch
        
        //modify category
        if(selected_item_index==0){
            alert("modify category");
        }else{
            //modify item
            alert("modify item");
        }//end else
    })//click

    /******************************************************************
     * display item_list
     ******************************************************************/
    function displyItemList(arr){
        $("#item_list").html("");
        $.each(arr,function(i,item){
            $("#item_list").append("<li>"+item+"</li>")
        });//end each
    }//displyItemList
    $("#root").trigger("click");
});//onload