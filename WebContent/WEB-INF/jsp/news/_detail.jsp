<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<div id="right2">
	<div class="artview_title">${_info.title}</div>
	<div class="artview_intr">${_info.summary}</div>
	<div id="artview_content">
	${_info.content}
	</div>
    <div class="point">
        <span class="to_prev">
        <c:if test="${_news_1!=null}">上一个：</c:if>
        <a href='${ctx}/news/${_news_1.id}.html' title='${_news_1.title}'>${_news_1.title}</a>
        </span>
        <span class="to_next">
        <c:if test="${_news_2!=null}">下一个：</c:if>
        <a href='${ctx}/news/${_news_2.id}.html' title='${_news_2.title}'>${_news_2.title}</a>
        </span>
    </div>
	<div class="blankbar1"></div>
</div>		


