<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" href="${ctx}/template/maoyi-110118-a29/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/lrtk.css" />
<div id="getValues" value="index" style="display:none;"></div>
<div id="getParams" value='a:0:{}' style="display:none;"></div>
<div id="top">
<div id="header">
    <div id="logo">
        <div id="MODBLK_222" class="mod_block media_image mb_logo_block">
            <div class="flash_image">
            <img src="${ctx}/uploadfile/sitelogo.png"/>
            </div>
        </div>
    </div> 
<!-- 站点语言模块Start -->
<div class="switch_langbar">
</div>
    <span class="language">
        选择语言：
        <a href="" id="translateLink">繁體中文</a> | 
        <script type="text/javascript">
        var defaultEncoding = 0; //默认是否繁体，0-简体，1-繁体
        var translateDelay = 240; //延迟时间,若不在</body>前, 要设定延迟翻译时间, 如100表示100ms,默认为0
        var cookieDomain = "http://localhost";    //Cookie地址, 一定要设定, 通常为你的网址
        var msgToTraditionalChinese = "繁體中文"; //默认切换为繁体时显示的中文字符
        var msgToSimplifiedChinese = "简体中文"; //默认切换为简体时显示的中文字符
        var translateButtonId = "translateLink"; //默认互换id
        translateInitilization();
        </script>
        <a href="/eindex.html">English</a>
    </span>
</div>

   <div id="nav_bg">
    <div id="nav">
        <div id="MODBLK_225" class="mod_block mb_56YrvV58_block">
            <div class="nav_l"></div>
                <ul id="nav_sWUiiy" class="navigation">
                <li><a href='/' target='_self'>首页</a></li>
<li><a href='/about' target='_self'>公司简介</a></li>
<li><a href='/news' target='_self'>新闻中心</a></li>
<li><a href='/product' target='_self'>产品展示</a></li>
<li><a href='/cases' target='_self'>成功案例</a></li>
<li><a href='/download' target='_self'>下载中心</a></li>
<li><a href='/recruitment' target='_self'>人才招聘</a></li>
<li><a href='/message' target='_self'>在线留言</a></li>
<li><a href='/contact-us' target='_self'>联系我们</a></li>

                </ul>
            <div class="nav_r"></div>
        </div>
	</div>
    </div>
    
    <%@ include file="/html/pic_head.htm" %>
  
     </div>