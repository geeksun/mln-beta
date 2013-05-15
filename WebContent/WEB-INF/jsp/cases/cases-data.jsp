<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div class="pro_over">
    <ul>
    <c:forEach  items="${_page.data}" var="_case">
         <li>
		    <a href="${ctx}/cases/${_case.id}" title="${_case.name}">
		    <img name="picautozoom" border="0" src="${_case.imgPath}" class="prodthumb" width="135" height="135"/></a>
		    <h5><a href="${ctx}/cases/${_case.id}" title="${_case.name}">${_case.name}</a></h5>
		</li> 
	</c:forEach>  
	</ul>
</div>

<!-- Pagination page -->
<jsp:include page="/include/page.jsp"></jsp:include>
<!-- Pagination page end -->