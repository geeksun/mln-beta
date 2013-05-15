<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<table width="670" border="0" cellpadding="0" cellspacing="2">    
      <tr>
        <td width="100%" colspan="2">
        <c:forEach items="${_page.data}" var="_info">
        <div style="margin-top:10px;">
            <table width="99%" border="0" align="center" cellpadding="7" cellspacing="1" bgcolor="#CCCCCC">
              <tr>
                <td width="16%" bgcolor="#F7F7F7"><div align="center">招聘职位:</div></td>
                <td width="29%" bgcolor="#FFFFFF">${_info.title}</td>
                <td width="13%" bgcolor="#F7F7F7"><div align="center">年龄要求:</div></td>
                <td width="21%" bgcolor="#FFFFFF">${_info.ageLow} 至 ${_info.ageUp} 岁</td>
                <td width="9%" bgcolor="#F7F7F7"><div align="center">性别:</div></td>
                <td width="12%" bgcolor="#FFFFFF">
                  <div align="center">
                   <c:choose>
                   <c:when test="${_info.gender eq 0}">不限</c:when>
                   <c:when test="${_info.gender eq 1}">男</c:when>
                   <c:when test="${_info.gender eq 2}">女</c:when>
                   </c:choose>
                  </div></td>
              </tr>
              <tr>
                <td bgcolor="#F7F7F7"><div align="center">学历要求：</div></td>
                <td bgcolor="#FFFFFF">${_info.education}</td>
                <td bgcolor="#F7F7F7"><div align="center">招聘人数：</div></td>
                <td colspan="3" bgcolor="#FFFFFF">${_info.vacancy} 人</td>
                </tr>
              <tr>
                <td bgcolor="#F7F7F7"><div align="center">职位要求：</div></td>
                <td colspan="4" bgcolor="#FFFFFF">${_info.requirement}</td>
                <td bgcolor="#FFFFFF"><div align="center"><a href="${ctx}/recruitment/jobs/${_info.id}" style="color:#990000">立即应聘</a></div></td>
              </tr>
            </table>
          </div>
          </c:forEach>
        </td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">
        <!-- Pagination page -->
		<jsp:include page="/include/page.jsp"></jsp:include>
		<!-- Pagination page end -->
        </td>
      </tr>
    </table>