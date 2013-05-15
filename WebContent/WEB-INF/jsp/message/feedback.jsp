<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isELIgnored="false" %>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script src="${ctx}/js/jquery.form.js"></script> 
<script>
	$(document).ready(function() {
     	var options = {
     		beforeSubmit: validate,
     		success: showResponse
     	};
    	$('#form1').ajaxForm(options);
	});
	function refresh() { 
		var img = document.getElementById("vcode"); 
		img.src = "${ctx}/buildImage.do?code="+Math.random(); 
	}
	function validate(formData){
		for (var i=0; i < formData.length; i++) {
	        if (!formData[i].value) {
	        	if(formData[i].name=="title"||formData[i].name=="name"||formData[i].name=="phone"){
	        		alert('请填写带星号的地方!');
	            	return false;
	        	}
	        }
	    }
	    return true;
	}
	function showResponse(responseText, statusText) {
		alert("您的信息已提交成功，感谢您的留言！");
		window.location.href="${ctx}/message";
	}
</script>
<div id="right2">
<div class="art_list" >
	<div class="art_list_title">在线留言</div>
        <form:form id="form1" modelAttribute="_message" name="form1" method="post" action="${ctx}/message/feedback" >
            <div id="table" style="height:480px;">
              <ul>
                <li>留言标题：</li>
                <li class="r">
                  <input name="title" type="text" size="40"  /> *
                </li>
                <li>您的姓名：</li>
                <li class="r">
                  <input name="name" type="text" size="40"  /> *
                </li>
                <li>联系电话：</li>
                <li class="r">
                  <input name="phone" type="text" size="40"  /> *
                </li>
                <li>电子邮箱：</li>
                <li class="r">
                  <input name="email" type="text" size="40"  />
                </li>
                <li style="height:120px;">留言内容：</li>
                <li class="r" style="height:120px;">
                  <textarea name="content" cols="50" rows="8" style="height:115px;"></textarea>
                </li>
                <li>验证码：</li>
               <li class="r"><input name="verifyCode" class="box" style="width:50px;">&nbsp;<span style="padding:2px 0px; background-color:#FFFFFF;">
               <img id="vcode" src="${ctx}/buildImage.do" title="看不清楚?换一张" onclick="refresh()" style="margin-right:8px;cursor:pointer;"/>
               </span></li> 
                <li class="b"></li>
                <li class="b r">
                  <input type="submit"  value="确定提交" />
                </li>
              </ul>
            </div>
          </form:form>         </div>
    </div>
</div>
