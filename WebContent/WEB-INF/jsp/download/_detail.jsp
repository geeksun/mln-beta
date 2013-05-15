<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div id="right2">
	<div class="artview_title">${_info.name}</div>
	<div class="download_btn"><a href="${_info.link}" title="点击下载：${_info.name}" target="_blank"><img src="../images/Download_btn.jpg"/></a></div>
	<div id="artview_content">
	${_info.content}
	</div>
	<div class="blankbar1"></div>
</div>		
