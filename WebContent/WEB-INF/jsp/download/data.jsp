<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div id="right2">
<div class="art_list" >
	<div class="art_list_title">
	<c:choose>
		<c:when test="${cid eq ''}">下载中心</c:when>
		<c:when test="${cid eq 1}">技术资料</c:when>
		<c:when test="${cid eq 2}">帮助文档</c:when>
		<c:when test="${cid eq 3}">软件下载</c:when>
	</c:choose>
	</div>
    <div class="art_list_con">
		 <ul>
		 <c:forEach items="${_page.data}" var="_info">
            <li><p class="l_title"><a href="${ctx}/download/${_info.id}.html" title="${_info.name}">${_info.name}</a></p></li>				
       	 </c:forEach>
         </ul>
	</div>

<!-- Pagination page -->
<jsp:include page="/include/page.jsp"></jsp:include>
<!-- Pagination page end -->

  </div>		
</div>
<div class="blankbar"></div>