<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!--main_div-->
<div id="main_div">
<!--mainmain-->
<div id="mainmain"> 
   
<div id="main_con" class="web_bg">
    <div id="left">
    <%@include file="/WEB-INF/jsp/menu/product-menu.jsp"  %>
    <%@include file="/WEB-INF/jsp/menu/news-menu.jsp"  %>
	<%@include file="../../../../html/contact-menu.htm"  %>
    </div>

<!-- products list -->                    
<div id="right">
<jsp:include page="${ctx}/WEB-INF/jsp/product/detail.jsp"/>
</div>
		       
        <div class="blankbar"></div>
	</div>
</div>
 <!--mainmain end-->   
</div>
<!--main_div end--> 