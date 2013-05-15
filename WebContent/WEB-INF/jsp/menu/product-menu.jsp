<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<link rel="stylesheet" type="text/css" href="/template/maoyi-110118-a29/css/style.css" />
<link rel="stylesheet" type="text/css" href="/css/lrtk.css" />
<script type="text/javascript" language="javascript" src="/script/droppy.js"></script>

<div id="MODBLK_299" class="mod_block mb_fsBdWXpb_block">
    <h3 class="blk_t">产品分类</h3>
<div class="list_main category">
	<div class="prod_type">
	<div id="pro_type_HaipIu">
	 <ul>
<%@include file="/html/product/category.htm" %>
    <div class="blankbar1"></div>
	</ul>		
	</div>
	</div>
	<div class="list_bot"></div>
</div>
<div class="blankbar"></div>
<script type="text/javascript" language="javascript">
/**
 * for menu-drop type
 */
var type = "";
if (type == 'click') {
	$(function(){
		$('#pro_type_HaipIu li:has(ul)').click(function(event){
	    	if (this == event.target) {
	        	if ($(this).children().is(':hidden')) {
	                $(this).css({background:'url(template/maoyi-110118-a29/images/minus.gif) no-repeat left 13px','text-indent':'16px','padding-top':'3px'})
	                .children().show();
	                
	              	$(this).siblings().each(function (){
	              		$(this).find("ul").hide();
	              		if ($(this).children().is("ul")){
	              			$(this).css({background:'url(template/maoyi-110118-a29/images/plus.gif) no-repeat left 13px','text-indent':'16px','padding-top':'3px'});
	              	    }
	              	});
	            } else {
	                $(this).css({background:'url(template/maoyi-110118-a29/images/plus.gif) no-repeat left 13px','text-indent':'16px','padding-top':'3px'})
	                .find("ul").hide();
	            }  
	        }
		}).css('cursor','pointer');
	          
	    $('#pro_type_HaipIu li:has(ul)').css({background:'url(template/maoyi-110118-a29/images/plus.gif) no-repeat left 13px','text-indent':'16px','padding-top':'3px'});
	        	
	    $('#pro_type_HaipIu li:not(:has(ul))').css({cursor: 'pointer','list-style-image':'none'});
	});
} else {
 	$("#pro_type_HaipIu > ul").droppy();
	$("#pro_type_HaipIu ul ul li:last-child").css("border","0px");
}
</script>
</div>
