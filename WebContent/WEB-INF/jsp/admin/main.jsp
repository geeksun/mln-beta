<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>蓝科企业网站管理系统中英繁版V2013</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="${ctx}/images/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
          <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
            <tr>
              <td height="35" bgcolor="#F7F7F7"><div style="padding-left:20px;"><strong>北京美利农科技发展有限公司</strong></div></td>
            </tr>
            
            <tr>
              <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="7" cellspacing="1" bgcolor="#FFFFFF" class="font">
                <tr>
                  <td height="25" width="35%" bgcolor="#F7F7F7">显示請求机器IP地址</td>
                  <td bgcolor="#F7F7F7">${request.getRemoteAddr()}</td>
                </tr>
                <tr>
                  <td height="25" width="35%" bgcolor="#FFFFFF">服务器IP地址</td>
                  <td bgcolor="#FFFFFF">${request.getLocalAddr()}</td>
                </tr>
                <tr>
                  <td height="25" width="35%" bgcolor="#F7F7F7">返回服务器处理請求的端口</td>
                  <td bgcolor="#F7F7F7">${request.getLocalPort()}</td>
                </tr>
                <tr>
                  <td height="25" width="35%" bgcolor="#FFFFFF">协议的名称和版本</td>
                  <td bgcolor="#FFFFFF">${request.getProtocol()}</td>
                </tr>
                <tr>
                  <td height="25" width="35%" bgcolor="#F7F7F7">浏览器</td>
                  <td bgcolor="#F7F7F7">${browerName}</td>
                </tr>
                <tr>
                  <td height="25" width="35%" bgcolor="#FFFFFF">服务器操作系統</td>
                  <td bgcolor="#FFFFFF">${osName}</td>
                </tr>
              </table>
              </td>
            </tr>
          </table>        

</body>
</html>
