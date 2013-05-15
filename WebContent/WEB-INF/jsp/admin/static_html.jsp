<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台用户管理中心</title>
<link href="images/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<table width="95%" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td height="30" bgcolor="#F7F7F7"><div><strong>生成静态</strong><span class="text2"></span></div></td>
  </tr>
  <tr>
<td height="50" valign="middle" bgcolor="#FFFFFF">
<p>
<form method="post">
<c:choose>
<c:when test="${id eq 1}"><input type="button" name="Submit" value="开始生成产品分类页" onClick="window.location.href='/static/html/productCategory' "/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${id eq 2}"><input type="button" name="Submit" value="开始生成新闻菜单页" onClick="window.location.href='index_html.asp' "/>
</c:when>
</c:choose>

</form>
</p>
</td>
  </tr>
</table>

</body>
</html>