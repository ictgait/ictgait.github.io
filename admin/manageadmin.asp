<!--#include file="conn.asp"-->
<!--#include file="../include/Common.asp" -->
<!--#include file="../include/errmsg.asp" -->
<!--#include file="../include/md5.asp" -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="../css/css.css">
<link rel="stylesheet" type="text/css" href="../css/control.css">
<title>�ޱ����ĵ�</title>
<script src="../js/common.js"></script>
</head>
<body style="text-align:center " class="ContentBody">
<table width="100%"  border="0" align="center" cellpadding="5" cellspacing="0" >
  <tr>
    <td class="CTitle"><strong>����Ա����</strong></td>
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
      elseif  submit="��ӹ���Ա" then
          add_user()
      elseif  submit="�޸�" then
          edit_user()
      elseif  submit="���" or submit="ȡ�����" then
          audit_user()
      elseif  submit="ɾ��" then
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
function chk_wode2(frmname,formname,temp)//���ǵ�ѡ��͸�ѡ������
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
    <td height="30" colspan="4">��̨����Ա����</td>
  </tr>
  <tr align="center" bgcolor="#f6f6f6">
    <td width="21%" height="30">�û���:</td>
    <td width="22%">����:</td>
    <td width="31%">Ȩ��</td>
    <td width="26%">����</td>
  </tr>
  <%set rs=conn.execute("select * from net_admin order by id desc")
    if  rs.eof  then
	    response.Write("<tr><td colspan=4 align='center' bgcolor='#ffffff'>��ǰ��û������κι���Ա!</td></tr></table>")
	else
	    while not rs.eof  
		    '��������
			id=rs("id")
			user=rs("adminname")
			pass=rs("password")
			if  pass="" or isnull(pass)  then
			    pass="��ָ������"
			else
			    pass=md5(pass)
			end if
			if  rs("is_audit")=true then 
			    audit_str="ȡ�����"
			else
			    audit_str="���"
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
    <td align="center" bgcolor="<%=bgcolor%>"><input name="power" type="checkbox" id="power" value="�鿴" >
      �鿴
        <input name="power" type="checkbox" id="power" value="���" >
        ���
        <input name="power" type="checkbox" id="power" value="�޸�" >
        �޸�
        <input name="power" type="checkbox" id="power" value="ɾ��" >
      ɾ��</td>
    <td bgcolor="<%=bgcolor%>">
	  <input name="Submit1" type="submit" id="Submit1" value="<%=audit_str%>" onClick="get_obj(this,'myform<%=id%>');">
	  <input name="Submit2" type="submit" id="Submit2" value="�޸�" onClick="get_obj(this,'myform<%=id%>');">
      <input name="Submit3" type="submit" id="Submit3" value="ɾ��" onClick="get_obj(this,'myform<%=id%>');"></td>
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
    <td height="30" colspan="4">��ӹ���Ա</td>
  </tr>
  <tr align="center" bgcolor="#F6F6F6">
    <td width="21%" height="30">�û���:</td>
    <td width="22%">����:</td>
    <td width="31%">Ȩ��</td>
    <td width="26%">����</td>
  </tr>
  <form action="" method="post" name="addform" onSubmit="javascript:if (user.value==''||pass.value==''){alert('�������û���������!');return false;}else{return true;}">
    <tr bgcolor="#FFFFFF">
      <td height="30" align="center"><input name="user" type="text" id="user"></td>
      <td align="center"><input name="pass" type="password" id="pass"></td>
      <td align="left"><input name="power" type="checkbox" id="power" value="�鿴" checked>
�鿴
  <input name="power" type="checkbox" id="power" value="���" checked>
���
<input name="power" type="checkbox" id="power" value="�޸�" checked>
�޸�
<input name="power" type="checkbox" id="power" value="ɾ��" checked>
ɾ��</td>
      <td><input name="Submit" type="submit" id="Submit" value="��ӹ���Ա">          </td>
    </tr>
  </form>
</table>
<table width="750"  border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td height="40" valign="top" style="color:#FF0000 ">�� �û��������޸ģ�ֻ���޸����뼰Ȩ�ޡ�<br>
    �� ����ɫ�����Ĺ���Ա��ʾ��ǰ��½�Ĺ���Ա(�Լ�),������ɾ��������</td>
  </tr>
</table>
<%end  sub
sub  add_user()
dim  user,pass,power
user=trim(request.Form("user"))
pass=trim(request.Form("pass"))
power=trim(request.Form("power"))
if  user="" or isnull(user) or pass="" or isnull(pass) then
    msg="�û��������벻����Ϊ��!"&referer
else
    set rs=conn.execute("select id from net_admin where adminname='"&user&"'")
	if  not rs.eof then
	    msg="���û����Ѵ���,�뻻������һ��"&referer
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
		msg="��ӳɹ�"&referer
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
    msg="�û��������벻����Ϊ��"&referer
else
    set rs=conn.execute("select id from net_admin where adminname='"&user&"' and id<>"&id)
	if  not rs.eof then
	    msg="���û����Ѵ��ڣ������޸ĳ�����û�!"&referer
	else
	    set  ars=server.CreateObject("adodb.recordset")
		ars.open "select * from net_admin where id="&id,conn,1,3
		if  ars.eof then 
		    msg="��������,����!"&referer
		else
		    'ars("adminname")=user
			ars("password")=md5(pass)
			ars("powerstring")=power
			ars.update()
			msg="�޸ĳɹ�"&referer
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
    msg="��������,�뷵��!"&referer
else
    set rs=conn.execute("select is_audit from net_admin where id="&id)
	if  rs.eof then
	    msg="��������,�뷵��!"&referer
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
    msg="��û��ѡ��ɾ����Ŀ�����ܽ���ɾ��������"&referer
else
    if user=session("admin") then
	     msg="������ɾ���Լ���"&referer
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
