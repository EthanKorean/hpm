$('section h4').click(function (event) {
    event.preventDefault();
    $(this).addClass('active');
    $(this).siblings().removeClass('active');
    var ph = $(this).parent().height();
    var ch = $(this).next().height();
});//click

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
}//tabParentHeight

$(window).resize(function () {
    tabParentHeight();
});//resize

$(document).resize(function () {
    tabParentHeight();
});//resize

tabParentHeight();

/**
 * click total checkbox
 */
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

/**
 * clicked each checkbox
 */
$("input:checkbox").on('click', function () { 
    if ($(this).prop('checked')) { 
       addSelect(this);
    } else { 
        removeSelect(this);
    } 
});//click

///////////////////////////////////////////////////////
/**
 * if each checkbox is checked, show Select and event on next <td>   
 */
function addSelect(temp) {
    //1.find next <td>
    var nextTd = $(temp).parent().next();
    //2.add select
    nextTd.html("<select> <option value='none'>--</option><option value='high'>상</option><option value='middle'>중</option><option value='low'>하</option></select>");
    //3.select object
    var _select_ = $(nextTd).children();
    //4.event
    $(_select_).on("change", function(){
        if(temp.value!="total" && this.value!="none"){
            var pstr = $('#search_condition').text().trim();
            var addstr = temp.name.trim()+">"+temp.value.trim()+">"+this.options[this.selectedIndex].text.trim();
            var spanid = temp.name.trim()+"_"+temp.id.trim()+"_"+this.value.trim();
            //5.check duplication
            if( pstr.indexOf(addstr) == -1){
                $('#search_condition').append("<span id='"+spanid+"'>"+addstr+"&nbsp;<a href='javascript:delPstr(\""+spanid+"\");'>[x]</a>&nbsp;,&nbsp;</span>");
            }else{
                alert("dup!");
            }
        }//end if
    });//change
}//addSelect
function delPstr(span_id){
    $("#"+span_id).remove();
}//delPstr

////////////////////////////////////////////////////////
/**
 * if each checkbox is unchcked , remove Select on next <td>
 */
function removeSelect(temp) {
    //1.find next <td>
    var nextTd = $(temp).parent().next();
    //2.find select object
    var _select_ = $(nextTd).children();
    //3.event
    var spanid = temp.name.trim()+"_"+temp.id.trim();
    $("span[id^='"+spanid+"']").remove();
    $(_select_).remove();
}//removeSelect



