<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="sitemesh" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>美利农</title>
<meta name="keywords" content="美利农" />
<meta name="description" content="美利农" />
<link rel="stylesheet" type="text/css" href="${ctx}/template/maoyi-110118-a29/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/lrtk.css" />
<script type="text/javascript" language="javascript" src="${ctx}/js/pptBox.js"></script>
<script type="text/javascript" language="javascript" src="${ctx}/script/popup/jquery-1.4.3.min.js"></script>

<script type="text/javascript" language="javascript" src="${ctx}/script/droppy.js"></script>
<sitemesh:head/>
</head>
<body class="body1">

<%@include file="header.jsp" %>
<sitemesh:body/>
<%@include file="footer.jsp" %>
</body>
</html>