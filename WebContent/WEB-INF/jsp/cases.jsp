<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" type="text/css" href="${ctx}/template/maoyi-110118-a29/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/lrtk.css" />

<!--main_div-->
<div id="main_div">
<!--mainmain-->
<div id="mainmain"> 
   
<div id="main_con" class="web_bg">

<!-- left menu -->
<div id="left">
<%@include file="/html/cases-menu.htm"  %>
<%@include file="/html/contact-menu.htm"  %>
</div>    
    
<!-- right contont -->                    
<div id="right">
<jsp:include page="${ctx}/WEB-INF/jsp/cases/cases-list.jsp"/>
</div>
        
        <div class="blankbar"></div>
	</div>
</div>
 <!--mainmain end-->   
</div>
<!--main_div end--> 