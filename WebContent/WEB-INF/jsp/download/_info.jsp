<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!--main_div-->
<div id="main_div">
<!--mainmain-->
    <div id="mainmain"> 
   
	<div id="main_con" class="web_bg">
	
<!-- left menu -->
<div id="left">
<%@include file="/html/download-menu.htm"  %>
<%@include file="/html/contact-menu.htm"  %>
</div>

<!-- right content -->
<div id="right">
<jsp:include page="${ctx}/WEB-INF/jsp/download/_detail.jsp"/>
</div>
<!-- right content end --> 	
 		       
      <div class="blankbar"></div>
	</div>
</div>
 <!--mainmain end-->   
</div>
<!--main_div end--> 
