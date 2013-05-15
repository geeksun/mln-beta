<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<script src="${ctx}/js/jquery.form.js"></script> 

<script type="text/javascript"> 
     $(document).ready(function() {
     	var options = {
     		beforeSubmit: validate,
     		success: showResponse
     	};
    	$('#form1').ajaxForm(options);
	});
	function validate(formData, jqForm, options){
		//var formData = document.form1;
		for (var i=0; i < formData.length; i++) {
	        if (!formData[i].value) {
	        	if(formData[i].name=="name"||formData[i].name=="birtherday"||formData[i].name=="phone"||formData[i].name=="email"){
	        		alert('带星号的地方必填，请填写!');
	            	return false;
	        	}
	        }
	    }
	    return true;
	}
	function showResponse(responseText, statusText) {
		alert("您的信息已提交成功，我们会尽快和您联系！");
		window.location.href="${ctx}/recruitment";
	}
</script>

<div id="right2">		
<div class="art_list" >
	<div class="art_list_title">人才招聘</div>
    <table width="670" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f4f4f2">
  <tr>
    <td width="670" valign="top"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
      <TBODY>
        
        <TR>
          <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="100%"><table width="100%" height="140%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="206" valign="top">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr valign="top" >
              <td  width="80%" height="18">
              <form:form name="form1" modelAttribute="_applicant" id="form1" action="${ctx}/recruitment/addApplicant" method="post">  
              	  <input type="hidden" name="jobsId" id="jobsId" value="${_id}">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><div align="center"></div></td>
                    </tr>
                  </table>
                <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC" >
                    <tr bgcolor="#f7f7f6">
                      <td width="86" height="30"><div align="right"><font color="#000066">职　位:
                      </font></div></td>
                      <td width="569" height="25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>${title}</strong>
                      </td>
                    </tr>
                    <tr bgcolor="#f7f7f6">
                      <td width="86"><div align="right"><font color="#000066">个人资料:</font></div></td>
                      <td valign="top"><table width="528" border="0" cellpadding="2" cellspacing="1">
                          <tbody>
                            <tr>
                              <td width="17%" height="20" align="right">姓&nbsp;&nbsp;名：</td>
                              <td width="83%"><input type="text" name="name" />
                                * </td>
                            </tr>
                            <tr>
                              <td align="right" 
                                height="20">性&nbsp;&nbsp;别：</td>
                              <td><select id="gender" name="gender">
                                  <option value="1">男</option>
                                  <option value="2">女</option>
                                </select>
                                *</td>
                            </tr>
                            <tr>
                              <td align="right" 
                                height="20">出生日期：</td>
                              <td><input name="birthday" />
                                *出生日期（如：1978-04-24）</td>
                            </tr>
                            <tr>
                              <td align="right" 
                                height="20">毕业院校：</td>
                              <td><input name="graduate" size="40" /></td>
                            </tr>
                            <tr>
                              <td align="right" 
                                height="20">学&nbsp;&nbsp;历：</td>
                              <td><input name="education" size="30" maxlength="50" /></td>
                            </tr>
                            <tr>
                              <td align="right" 
                                height="20">专&nbsp;&nbsp;业：</td>
                              <td><input name="specialty" size="30" maxlength="50" /></td>
                            </tr>
                            <tr>
                              <td align="right" 
                                height="20">户 籍 地：</td>
                              <td><input name="hometown" id="hometown" size="40" maxlength="50" />
                              *</td>
                            </tr>
                            <tr>
                              <td 
                                height="20" align="right">现 住 址：</td>
                              <td><input name="address" id="address" 
                               size="40" /></td>
                            </tr>
                          </tbody>
                      </table></td>
                    </tr>
                    <tr>
                      <td width="86" bgcolor="#f7f7f6"><div align="right"><font color="#000066">教育经历:</font></div></td>
                      <td align="center" bgcolor="#f7f7f6"><table width="100%" height="188" 
                                border="0" align="center" cellpadding="2" cellspacing="1">
                          <tbody>
                            <tr bgcolor="#f7f7f6">
                              <td width="16%" height="21" align="center">&nbsp;学历</td>
                              <td width="22%" align="center">&nbsp;起止时间</td>
                              <td width="22%" align="center">&nbsp;专业名称</td>
                              <td width="19%" align="center">&nbsp;证书</td>

                              <td width="21%">&nbsp;学校名称</td>
                            </tr>
                            <tr valign="top" bgcolor="#f7f7f6">
                              <td colspan="5" align="center"><textarea id="educationExperience" name="educationExperience" rows="12" cols="70"></textarea>
                                  <br />
                                * 教育经历必填，且要按上面的格式和发生时间先后填写!</td>
                            </tr>
                          </tbody>
                      </table></td>
                    </tr>
                    <tr>
                      <td width="86" bgcolor="#f7f7f6"><div align="right"><font color="#000066">工作经历:</font></div></td>
                      <td bgcolor="#f7f7f6"><table width="100%" height="188" 
                                border="0" align="center" cellpadding="2" cellspacing="1">
                          <tbody>
                            <tr bgcolor="#f7f7f6">
                              <td width="25%" height="21" align="center">&nbsp;起止时间</td>
                              <td width="25%" align="center">&nbsp;职位名称</td>
                              <td width="25%" align="center">&nbsp;服务单位</td>
                              <td width="25%">&nbsp;工作内容</td>
                            </tr>
                            <tr valign="top" bgcolor="#f7f7f6">
                              <td colspan="4" align="center"><textarea id="workExperience" name="workExperience" rows="12" cols="70"></textarea>
                                  <br />
                                * 工作经历必填，且要按上面的格式和发生时间先后填写!</td>
                            </tr>
                          </tbody>
                      </table></td>
                    </tr>
                    <tr bgcolor="#f7f7f6">
                      <td width="86"><div align="right"><font color="#000066">联系方式:</font> </div></td>
                      <td><table width="500" border="0" cellpadding="2" cellspacing="1">
                          <tbody>
                            <tr>
                              <td width="17%" height="20" align="right">联系电话：</td>
                              <td width="83%"><input name="phone" id="phone" size="25" />
                                * </td>
                            </tr>
                            <tr>
                              <td 
                                height="20" align="right">E-mail地址：</td>
                              <td><input 
                                name="email" id="email" size="25" />
                                *</td>
                            </tr>
                          </tbody>
                      </table></td>
                    </tr>
                    <tr bgcolor="#f7f7f6">
                      <td width="86">&nbsp;</td>
                      <td><div align="center">
                          <input type="submit" value=" 提交 ">
                        &nbsp;&nbsp;
                        <input type="reset"  value=" 重置 " />
                      </div></td>
                    </tr>
                  </table>
              </form:form>
              </td>
            </tr>
          </table>
              </td>
    </tr>
  </table></TD>
                </TR>
            </TABLE></TD>
        </TR>
    </TABLE></td>
  </tr>
</table>
</div>
</div>
<!-- right2 end -->