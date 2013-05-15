<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div class="pro_over">
    <ul>
    <c:forEach items="${_page.data}" var="_product">
    <li>
        <a href="${ctx}/product/${_product.id}.html" title="${_product.name}"><img name="picautozoom" border="0" src="${_product.imgPath}" class="prodthumb" width="145" height="145"/></a>
        <h5><a href="${ctx}/product/${_product.id}.html" title="${_product.name}">${_product.name}</a></h5>
    </li>
    </c:forEach>
    </ul>
</div>

<!-- Pagination page -->
<jsp:include page="/include/page.jsp"></jsp:include>
<!-- Pagination page end -->

      
