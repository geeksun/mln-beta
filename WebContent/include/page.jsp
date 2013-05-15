<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ page isELIgnored="false" %>
     
<div id="pagerwrapper">
<table width=100% border=0 cellpadding=0 cellspacing=0 >
<TR>
<TD align=left  class=hui>
<p align=center>
<a title="First Page" href="javascript:jumpPage(1,0)">首页</a>
<a href="javascript:jumpPage(${_page.currentPage-1},0)">上一页</a>
<a title="Next Page" href="javascript:jumpPage(${_page.currentPage+1},1)">下一页</a>
<a href="javascript:jumpPage(${_page.totalPage},1)">尾页</a>
页次：${_page.currentPage}/${_page.totalPage}页
 共${_page.totalRows}条记录
 转<INPUT CLASS=wenbenkuang type=TEXT id="targetPage" NAME=targetPage SIZE=2 Maxlength=5 VALUE='${_page.currentPage}'>页
<INPUT CLASS=go-wenbenkuang type=button id="goPage" value=GO></TD>
</TR>
<input type="hidden" id="currentPage" name="currentPage" value="${_page.currentPage}" >
<input type="hidden" id="totalPage" name="totalPage" value="${_page.totalPage}" >
</table>

</div>
     
	<script type="text/javascript">
	<!--
		$(function(){
			$("#goPage").click(function(){
				var targetPage = parseInt($('#targetPage').val());
				var totalPage = parseInt($("#totalPage").val());
				if(totalPage<targetPage){
					alert('最大页数为'+totalPage);
					jumpPage(totalPage);
				}else{
					jumpPage(targetPage);
				}
			});
		});
	//-->
	function jumpPage(pageNo,num) {
		var currentPage = parseInt($('#currentPage').val());
		var totalPage = parseInt($("#totalPage").val());
		if(num==0){
			if(pageNo==0){
				$("#pageNo").val(1);
			} else {
				$("#pageNo").val(pageNo);
			}
		} else {
			if(pageNo>=totalPage){
				$("#pageNo").val(totalPage);
			} else {
				$("#pageNo").val(pageNo);
			}
		}
		
		$("#listForm").submit();
	}
	</script>