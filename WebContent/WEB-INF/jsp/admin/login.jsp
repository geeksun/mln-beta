<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<link href="${ctx}/images/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {background-color: #044668;}
-->
</style>
<script type="text/javascript" language="javascript" src="${ctx}/script/popup/jquery-1.4.3.min.js"></script>
<script src="${ctx}/js/jquery.form.js"></script> 
<script>
	$(document).ready(function() {
     	var options = {
     		beforeSubmit: validate,
     		success: showResponse
     	};
    	$('#form1').ajaxForm(options);
	});
	function validate(formData){
		for (var i=0; i < formData.length; i++) {
	        if (!formData[i].value) {
	        	if(formData[i].name=="account"||formData[i].name=="password"||formData[i].name=="verifyCode"){
	        		alert('请填写括号中内容!');
	            	return false;
	        	}
	        }
	    }
	    return true;
	}
	function showResponse(responseText, statusText) {
		if(responseText!="0"){
			$("#_account").val(responseText);
			$("#form2").attr('action','${ctx}/admin/index');
			$("#form2").submit();
			//window.location.href="${ctx}/admin/index?account="+responseText;
		}else{
			alert("用户名或密码错误！");
		}
	}
</script>
<form name="form2" id="form2" method="post"><input type="hidden" name="_account" id="_account"></form>
<form name="form1" id="form1" method="post" action="${ctx}/admin/login">
<div style="padding-top:150px;">
  <table width="641" border="0" align="center">
  <tr>
    <td width="641" height="232" align="right" valign="middle" background="${ctx}/images/bg.jpg"><table width="355" border="0">
      <tr>
        <td width="220"><table width="100%" border="0">
          <tr>
            <td width="20%">账 号</td>
            <td width="80%"><input name="account" type="text" size="22"></td>
          </tr>
          <tr>
            <td>密 码</td>
            <td><input name="password" type="password" size="24"></td>
          </tr>
          <tr>
            <td>验证码</td>
            <td align="left" valign="middle">
            <input name="verifyCode" type="text" id="VerifyCode" size="6" maxlength="5"/>
            <img border=0 src="${ctx}/buildImage.do?" title="图片看不清？点击重新得到验证码" onClick="this.src+=Math.random()" style="cursor:hand;" />
			</td>
          </tr>
        </table></td>
        <td width="115"><input border=0 cache height=89 src="${ctx}/images/login.jpg" type=image width=82 name="image"></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>
</form>
<table width="100%" border="0">
  <tr>
    <td align="center" valign="middle"><a href="${ctx}/" target="_blank" style="color:#CCCCCC">北京美利农科技发展有限公司</a></td>
  </tr>
</table>

