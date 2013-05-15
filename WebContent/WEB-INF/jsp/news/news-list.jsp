<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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
<form action="${ctx}/news/list.data" id="listForm" method="post">
	<input type="hidden" id="_num" name="_num" value="${_num}" />
	<input type="hidden" id="pageNo" name="pageNo" value="${_page.currentPage}">
</form>

<div id="pagination"></div>