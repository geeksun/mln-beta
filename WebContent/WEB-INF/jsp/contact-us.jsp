<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!--main_div-->
<div id="main_div">
<!--mainmain-->
    <div id="mainmain"> 
   
	<div id="main_con" class="web_bg">
    
<!-- left menu -->
<div id="left">
<%@include file="/html/navigation.htm"  %>
<%@include file="/WEB-INF/jsp/menu/news-menu.jsp"  %>
<%@include file="/html/contact-menu.htm"  %>
</div>

<!-- right content -->
<div id="right">
<%@include file="/html/contact/contact-us-detail.htm"  %>
</div>
<!-- right content end --> 	
 		       
      <div class="blankbar"></div>
	</div>
</div>
 <!--mainmain end-->   
</div>
<!--main_div end--> 
