<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
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
	<div class="art_list_title">成功案例</div>
	<form action="${ctx}/cases/list.data" id="listForm" method="post">
		<input type="hidden" id="cid" name="cid" value="${cid}" />
		<input type="hidden" id="pageNo" name="pageNo" value="${_page.currentPage}">
	</form>
	
<div id="pagination"></div>

	</div>
</div>