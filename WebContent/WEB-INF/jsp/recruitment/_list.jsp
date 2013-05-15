<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

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
	<div class="art_list_title">人才招聘</div>


<form action="${ctx}/recruitment/list.data" id="listForm" method="post">
	<input type="hidden" id="pageNo" name="pageNo" value="${_page.currentPage}">
</form>
    	</div>

<div id="pagination"></div>

	</div>
</div>



