<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<frameset rows="80,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${ctx}/admin/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset rows="*" cols="160,*" framespacing="0" frameborder="no" border="0">
    <frame src="${ctx}/admin/left" name="leftmenu" id="mainFrame" title="mainFrame" />
    <frameset rows="40,*" cols="*" framespacing="0" frameborder="no" border="0">
 <frame src="${ctx}/admin/menu?account=${account}" name="topmenu" id="mainFrame" title="mainFrame" />   
    <frame src="${ctx}/admin/main" name="main" scrolling="yes" noresize="noresize" id="rightFrame" title="rightFrame" />
  </frameset>
  </frameset>
</frameset><noframes></noframes>
<noframes>

