<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<link rel="stylesheet" type="text/css" href="${ctx}/template/maoyi-110118-a29/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/lrtk.css" />

<script src="${ctx}/js/jquery.form.js"></script> 

<script type="text/javascript"> 
     $(document).ready(function() {
     	var options = {
     		target: '#pagination'
     	};
    	$('#listForm').ajaxForm(options);
		$("#listForm").submit();
	});
</script>
</head>

<div id="right2">		
<div class="art_list" >
	<div class="art_list_title">产品中心</div>
		<div class="art_list_search">
<form action="${ctx}/product/list.data" id="listForm" method="post">
    <input type="text" name="keyword" id="keyword" onfocus="this.value=''" value="${keyword}" />
    <input type="submit" name="prdsearch_submit" id="prdsearch_submit" value="搜索" />
   	<input type="hidden" id="fid" name="fid" value="${fid}" />
	<input type="hidden" id="pageNo" name="pageNo" value="${_page.currentPage}">
</form>
    	</div>

<div id="pagination"></div>

	</div>
</div>

