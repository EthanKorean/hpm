$(function (){
    /******************************************************************
     * clicked tree
     ******************************************************************/
	"use strict";
	var count=0;
    var last_click_lvl=0; // 0:root , 1:category ,2:item
    var selected_index=0;
    var is_add_btn_clicked = false;
    
     $(".tree li").click(function() {
    	 //d
    	 alert
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
        console.log(index);
        console.log("-----------");
        if(count==0){
        	selected_index=index;
	        if(hasSub($("li:eq(" + index + ") > ul > li"))){
	        	$("#edit_btn").css("display","none");
	        	$("#child_list_section").css("display","block");
	    	        $("#skill_name_p").html("");
	    	        $("#parent_category_h").html("");
	    	        last_click_lvl=0;
	    	        txt=txt.substring(0,txt.indexOf("\n"));
	    	        $("#parent_category_h").text(txt);
	    	        var arr = new Array
	    	        var temp="";
	    	        $("li:eq("+index+") > ul > li").each(function(i){
	    	        	temp=$(this).text();
	    	        	if(temp.indexOf("\n")==-1){
	    	        		arr[i]=temp;
	    	        	}else{
	    	        		temp=temp.substring(0,temp.indexOf("\n"));
	    	        		arr[i]=temp;
	    	        	}//else
	    	        })//each
	    	        displyItemList(arr);
	    	        selected_category_index=index;
	    	        if(index==0){return;}
	        }else{
	            $("#child_list_section").css("display","none");
	            $("#skill_name_p").html("");
	            $("#skill_name_p").html("<br/>"+txt);
	        }//end else
        }//end if
        if(index==0){
        	count=0;
        }else{
        	count++;
        }//end else
        $('html, body').stop().animate({scrollTop: $("#skill_detail").offset().top}, 300);
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
        switch(hasSub($("li:eq("+selected_index+")")) ){
            case true:
                var parent_category=$("#parent_category_h").text().trim();
                $("#parent_category_h").css("display","none");
                $("#parent_category_input").val(parent_category);
                $("#parent_category_input").css("display","inline");
            break;
            case false:
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
        switch(hasSub($("li:eq("+selected_index+")"))){
            case true:
                $("#parent_category_h").css("display","inline");
                $("#parent_category_input").css("display","none");
            break;
            case false:
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

            if(selected_index!=0){
            	//var sample = "<li class='item tree-empty'><span class='toggler'></span><a href='javascript:void(0)'>"+txt+"</a></li>";
            	var sample = "<li data-index='3' class='tree-empty'><span class='toggler'></span><a>"+txt+"</a></li>";
                $("li:eq("+selected_index+") > ul")
                .append(sample);
            }else{
                 $("#root > ul")
                .append("<li class='categroy tree-closed'><span class='toggler'></span><a href='javascript:void(0)'>"+txt+"</a>"+
                "<ul class='treemenu'></ul></li>");
                //$("#root").trigger("click");
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
            console.log("modify category");
        }else{
            //modify item
        	console.log("modify item");
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
    
    function hasSub(li){
    	var flag= false;
    	$(li).each(function(i){
    		flag=true;
        })//each
        return flag;
    }//isSelectedTeam
});//onload
