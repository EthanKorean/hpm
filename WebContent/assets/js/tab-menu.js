$('section h4').click(function (event) {
    event.preventDefault();
    $(this).addClass('active');
    $(this).siblings().removeClass('active');

    var ph = $(this).parent().height();
    var ch = $(this).next().height();

	/*  if (ch > ph) {
	    $(this).parent().css({
	      'min-height': ch + 'px'
	    });
	  } else {
	    $(this).parent().css({
	      'height': 'auto'
	    });
	  }*/
});

function tabParentHeight() {
    var ph = $('.tab-menu').height();
    var ch = $('.tab-menu ul').height();
    if (ch > ph) {
        $('.tab-menu').css({
            'height': ch + 'px'
        });
    } else {
        $(this).parent().css({
            'height': 'auto'
        });
    }
}

$(window).resize(function () {
    tabParentHeight();
});

$(document).resize(function () {
    tabParentHeight();
});
tabParentHeight();

//최상단 체크박스 클릭
$("#total").click(function () {
    //클릭되었으면
    if ($("#total").prop("checked")) {
        $('input:checkbox[name="language"]').each(function () {
            this.checked = true; //checked 처리
            addSelect(this);
        });
    } else {
        $('input:checkbox[name="language"]').each(function () {
            this.checked = false; //checked 처리
            removeSelect(this);
        });
    }//end else
})//click

$("input:checkbox").on('click', function () { 
    if ($(this).prop('checked')) { 
       addSelect(this);
    } else { 
        removeSelect(this);
    } 
});//click

var newline_std = 20;
var count = 0;
function addSelect(temp) {
    count++;
    $(temp).parent().next().html("<select id='select_"+temp.id+"'> <option>--</option><option>상</option><option>중</option><option>하</option></select>");
    if(count%newline_std==0){
        $('#search_condition').append("<br/>");
    }
   
    $('#search_condition').append("<span>h3i</span>");
    $("select").on("change", function(){
     alert("hi!!!")
    });

}//

function removeSelect(temp) {
    $(temp).parent().next().text("");
}



