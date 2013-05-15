<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div id="right2">
<div class="art_list" >
	<div class="art_list_title">
	<c:choose>
		<c:when test="${_num eq ''}">新闻中心</c:when>
		<c:when test="${_num eq 1}">公司新闻</c:when>
		<c:when test="${_num eq 2}">行业新闻</c:when>
		<c:when test="${_num eq 3}">技术资讯</c:when>
	</c:choose>
	</div>
    <div class="art_list_con">
		 <ul>
		 <c:forEach items="${_page.data}" var="_news">
            <li><p class="l_title"><a href="${ctx}/news/${_news.id}.html" title="${_news.title}">${_news.title}</a></p><p class="n_time"><fmt:formatDate value="${_news.time}" pattern="yyyy-MM-dd HH:mm:ss"/></p></li>				
       	 </c:forEach>
         </ul>
	</div>

<!-- Pagination page -->
<jsp:include page="/include/page.jsp"></jsp:include>
<!-- Pagination page end -->

  </div>		
</div>
<div class="blankbar"></div>
