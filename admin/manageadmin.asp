<!--#include file="conn.asp"-->
<!--#include file="../include/Common.asp" -->
<!--#include file="../include/errmsg.asp" -->
<!--#include file="../include/md5.asp" -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="../css/css.css">
<link rel="stylesheet" type="text/css" href="../css/control.css">
<title>无标题文档</title>
<script src="../js/common.js"></script>
</head>
<body style="text-align:center " class="ContentBody">
<table width="100%"  border="0" align="center" cellpadding="5" cellspacing="0" >
  <tr>
    <td class="CTitle"><strong>管理员管理</strong></td>
  </tr>
</table>
<%
response.Write("<div class='MainDiv'>")
if session("admin")="" then
     response.redirect "mylogin.asp"
else
      dim  submit
      submit=trim(request.Form("submit"))
      if  submit="" then
          show_body
      elseif  submit="添加管理员" then
          add_user()
      elseif  submit="修改" then
          edit_user()
      elseif  submit="审核" or submit="取消审核" then
          audit_user()
      elseif  submit="删除" then
          del_user()
      end if
end if
response.Write("</div>")
'============================================================
sub  show_body()
dim  user,pass,id,audit_str,bgcolor

%>
<script>
function get_obj(obj,formname)
{
  document.all(formname).Submit.value=obj.value;
}
function chk_wode2(frmname,formname,temp)//这是单选框和复选框的情况
{
var key;
//var a = document.getElementsByName(formname);
var a=document.forms(frmname)(formname);
for (var i=0; i<a.length; i++) 
    {
	  var bb=a[i].value;
	  if (bb==temp||temp.indexOf(bb)>=0){a[i].checked=true;}
	}
}
</script>
<table width="750"  border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
  <tr align="center" bgcolor="#FFFFFF">
    <td height="30" colspan="4">后台管理员管理</td>
  </tr>
  <tr align="center" bgcolor="#f6f6f6">
    <td width="21%" height="30">用户名:</td>
    <td width="22%">密码:</td>
    <td width="31%">权限</td>
    <td width="26%">操作</td>
  </tr>
  <%set rs=conn.execute("select * from net_admin order by id desc")
    if  rs.eof  then
	    response.Write("<tr><td colspan=4 align='center' bgcolor='#ffffff'>当前还没有添加任何管理员!</td></tr></table>")
	else
	    while not rs.eof  
		    '处理密码
			id=rs("id")
			user=rs("adminname")
			pass=rs("password")
			if  pass="" or isnull(pass)  then
			    pass="请指定密码"
			else
			    pass=md5(pass)
			end if
			if  rs("is_audit")=true then 
			    audit_str="取消审核"
			else
			    audit_str="审核"
			end if	
			if  user=session("admin") then  
			    bgcolor="red"
			else
			    bgcolor="#FFFFFF"
			end if    
	%>
  <form action="" method="post" name="myform<%=id%>">
  <tr bgcolor="<%=bgcolor%>">
    <td height="30" align="center" bgcolor="<%=bgcolor%>"><input name="user" type="text" id="user" value="<%=user%>" readonly="true">
      <input name="id" type="hidden" id="id" value="<%=id%>">
      <input name="Submit" type="hidden" id="Submit">      </td>
    <td align="center" bgcolor="<%=bgcolor%>"><input name="pass" type="password" id="pass" value="<%=pass%>"></td>
    <td align="center" bgcolor="<%=bgcolor%>"><input name="power" type="checkbox" id="power" value="查看" >
      查看
        <input name="power" type="checkbox" id="power" value="添加" >
        添加
        <input name="power" type="checkbox" id="power" value="修改" >
        修改
        <input name="power" type="checkbox" id="power" value="删除" >
      删除</td>
    <td bgcolor="<%=bgcolor%>">
	  <input name="Submit1" type="submit" id="Submit1" value="<%=audit_str%>" onClick="get_obj(this,'myform<%=id%>');">
	  <input name="Submit2" type="submit" id="Submit2" value="修改" onClick="get_obj(this,'myform<%=id%>');">
      <input name="Submit3" type="submit" id="Submit3" value="删除" onClick="get_obj(this,'myform<%=id%>');"></td>
  </tr>
  </form>
  <script>
  chk_wode2("myform<%=id%>","power","<%=rs("powerstring")%>");
  </script>
  <%
           rs.movenext
	   wend
  end if
  rs.close:set rs=nothing  
  %>
  <tr bgcolor="#F6F6F6">
    <td height="30" colspan="4">&nbsp;</td>
  </tr>
</table>
<table width="750"  border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
  <tr align="center" bgcolor="#FFFFFF">
    <td height="30" colspan="4">添加管理员</td>
  </tr>
  <tr align="center" bgcolor="#F6F6F6">
    <td width="21%" height="30">用户名:</td>
    <td width="22%">密码:</td>
    <td width="31%">权限</td>
    <td width="26%">操作</td>
  </tr>
  <form action="" method="post" name="addform" onSubmit="javascript:if (user.value==''||pass.value==''){alert('请输入用户名和密码!');return false;}else{return true;}">
    <tr bgcolor="#FFFFFF">
      <td height="30" align="center"><input name="user" type="text" id="user"></td>
      <td align="center"><input name="pass" type="password" id="pass"></td>
      <td align="left"><input name="power" type="checkbox" id="power" value="查看" checked>
查看
  <input name="power" type="checkbox" id="power" value="添加" checked>
添加
<input name="power" type="checkbox" id="power" value="修改" checked>
修改
<input name="power" type="checkbox" id="power" value="删除" checked>
删除</td>
      <td><input name="Submit" type="submit" id="Submit" value="添加管理员">          </td>
    </tr>
  </form>
</table>
<table width="750"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td height="40" valign="top" style="color:#FF0000 ">※ 用户名不得修改，只能修改密码及权限。<br>
    ※ 带红色长条的管理员表示当前登陆的管理员(自己),您不能删除您自身。</td>
  </tr>
</table>
<%end  sub
sub  add_user()
dim  user,pass,power
user=trim(request.Form("user"))
pass=trim(request.Form("pass"))
power=trim(request.Form("power"))
if  user="" or isnull(user) or pass="" or isnull(pass) then
    msg="用户名和密码不允许为空!"&referer
else
    set rs=conn.execute("select id from net_admin where adminname='"&user&"'")
	if  not rs.eof then
	    msg="该用户名已存在,请换用另外一个"&referer
	else
	    pass=md5(pass)
	    set ars=server.CreateObject("adodb.recordset")
		ars.open "select * from net_admin",conn,1,2
		ars.addnew()
		ars("adminname")=user
		ars("password")=pass
		ars("PowerString")=power
		ars("addman")=session("admin")
		ars.update()
		ars.close:set ars=nothing
		msg="添加成功"&referer
	end if
	rs.close:set rs=nothing
end if
if  msg<>"" then  errmsg tit,msg
end  sub
sub  edit_user()
dim  id,user,pass,power
id=request.Form("id")
user=trim(request.Form("user"))
pass=trim(request.Form("pass"))
power=trim(request.Form("power"))
if  user="" or isnull(user) or pass="" or isnull(pass) then
    msg="用户名和密码不允许为空"&referer
else
    set rs=conn.execute("select id from net_admin where adminname='"&user&"' and id<>"&id)
	if  not rs.eof then
	    msg="此用户名已存在，不能修改成这个用户!"&referer
	else
	    set  ars=server.CreateObject("adodb.recordset")
		ars.open "select * from net_admin where id="&id,conn,1,3
		if  ars.eof then 
		    msg="参数错误,请检查!"&referer
		else
		    'ars("adminname")=user
			ars("password")=md5(pass)
			ars("powerstring")=power
			ars.update()
			msg="修改成功"&referer
	    end if
		ars.close:set ars=nothing
	end if
	rs.close:set rs=nothing
end if
if  msg<>"" then errmsg tit,msg 
end  sub
sub  audit_user()
dim  id,audit
id=request.Form("id")
if  id="" or isnull(id) or isnumeric(id)=false then
    msg="参数错误,请返回!"&referer
else
    set rs=conn.execute("select is_audit from net_admin where id="&id)
	if  rs.eof then
	    msg="参数错误,请返回!"&referer
	else
	    audit=rs("is_audit")
		if  audit=true then
		    conn.execute("update net_admin set is_audit=false where id="&id)
		else
		    conn.execute("update net_admin set is_audit=true where id="&id)
		end if
		response.Redirect(request.ServerVariables("HTTP_REFERER"))
	end if
end if
if  msg<>"" then errmsg tit,msg
end  sub
sub del_user()
dim  id,user
id=request.Form("id")
user=trim(request.Form("user"))
if  id="" or isnull(id) then
    msg="您没有选择删除项目，不能进行删除操作！"&referer
else
    if user=session("admin") then
	     msg="您不能删除自己！"&referer
	else
	     conn.execute("delete from net_admin where id="&id)
	     response.Redirect("manageadmin.asp")
	end if
end if
if msg<>"" then errmsg tit,msg


end  sub
%>
</body>
</html>
