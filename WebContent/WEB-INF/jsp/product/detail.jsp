<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div id="right2">
        
<div class="art_list">	
	<div class="art_list_title product_title">产品展示</div>
    
    <div class="showpic_all">
        <div class="showpic3">${_info.name}</div>
        <div class="showpic"><a href="/Z03_V2013/uploadfile/20125131521299617.jpg" target="_blank" class="apic prodthumb"><img name="picautozoom" src="/Z03_V2013/uploadfile/20125131521299617.jpg" border="0" width="220" height="220"/></a></div>
            <div class="showpic2">                
                  <div class="showpic4">
                    <p><strong>产品编号：</strong><b>${_info.number}</b></p>
                    <p><strong>公牛号：</strong><b>${_info.bullNumber}</b></p>
                    <p><strong>英文名称：</strong><b>${_info.enName}</b></p>
                    <p><strong>TPI：</strong><b>${_info.tpi}</b></p>
                    <p><strong>牛奶产量：</strong><b>${_info.milkProduction} (千克)</b></p>
                    <p><strong>产奶时间：</strong><b>${_info.milkLife} (天)</b></p>
                    <p><strong>产品价格：</strong><b style="color:#FF0000; font-size:14px;">${_info.price}元</b></p>
                    <div class="button"><a href="/Z03_V2013/Inquiry/index.asp?id=57">在线订购</a></div>
                  </div>
            </div>
     </div>
 
    
	<div class="prodview_prices">
	</div>
	<div class="prodview_content"><p></p>
<strong>产品介绍：</strong>${_info.description}
	</div>
    <div class="point">
        <span class="to_prev">
        <c:if test="${_product_1!=null}">上一个：</c:if>
        <a href='${ctx}/product/${_product_1.id}.html' title='${_product_1.name}'>${_product_1.name}</a>
        </span>
        <span class="to_next">
        <c:if test="${_product_2!=null}">下一个：</c:if>
        <a href='${ctx}/product/${_product_2.id}.html' title='${_product_2.name}'>${_product_2.name}</a>
        </span>
    </div>
        <p id="product_gallery">
        </p>
</div>
		</div>
		       
        <div class="blankbar"></div>

