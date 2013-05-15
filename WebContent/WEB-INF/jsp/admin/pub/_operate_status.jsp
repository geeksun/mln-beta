<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="images/style.css" type="text/css" rel="stylesheet" />

<table width="95%" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
<tr>
	<td height="30" bgcolor="#F7F7F7"><div><strong>
	<c:choose>
	<c:when test="${id eq 1}">产品分类页
	</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${id eq 2}">新闻菜单页
	</c:when>
	</c:choose>
	生成成功
	</strong><span class="text2"></span></div></td>
</tr>
</table>