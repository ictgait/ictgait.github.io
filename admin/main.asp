<!--#include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>main</title>
<meta name="copyright" content="QQ173573275" />
<link rel="stylesheet" type="text/css" href="../css/css.css">
<link rel="stylesheet" type="text/css" href="../css/control.css">
</head>
<body class="ContentBody">
<%
super="<strong>系 统 控 制 面 板</strong>"
suber="欢迎"&session("admin")&"光临，请点击左边的功能键进行操作。"
show_item_menu super,suber
%>
<div class="MainDiv"><br>
<table width="96%"  border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td colspan="2" bgcolor="#F6F6F6"><div align="center"><strong>服 务 器 信 息</strong></div></td>
  </tr>
  <tr>
    <td width="50%" bgcolor="#FFFFFF">当前域名：<font color=blue><%=Request.ServerVariables("SERVER_NAME")%></td>
    <td bgcolor="#FFFFFF">服务器操作系统：<font color=blue><%=Request.ServerVariables("OS")%></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">脚本超时时间：<font color=blue><%=Server.ScriptTimeout%></font> 秒</td>
    <td bgcolor="#FFFFFF">WEB服务器的名称和版本：<font color=blue><%=Request.ServerVariables("SERVER_SOFTWARE")%></font></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">JRO.JetEngine(ACCESS 数据库)：
        <%
	    On Error Resume Next
	    Server.CreateObject("JRO.JetEngine")
		if err=0 then 
		  response.write("<font color=blue>支持</font>")
		else
          response.write("<font color=red>不支持</font>")
		end if	 
		err=0
	  %></td>
    <td bgcolor="#FFFFFF">adodb.connection(ACCESS 数据库)：
        <%
	    On Error Resume Next
	    Server.CreateObject("adodb.connection")
		if err=0 then 
		  response.write("<font color=blue>支持</font>")
		else
          response.write("<font color=red>不支持</font>")
		end if	 
		err=0
	  %>
</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">FSO文本文件读写：
        <%
	    On Error Resume Next
	    Server.CreateObject("Scripting.FileSystemObject")
		if err=0 then 
		  response.write("<font color=blue>支持</font>")
		else
          response.write("<font color=red>不支持</font>")
		end if	 
		err=0
	  %>
</td>
    <td bgcolor="#FFFFFF">CDONTS邮件发送 SMTP Service：
        <%
	    On Error Resume Next
	    Server.CreateObject("CDONTS.NewMail")
		if err=0 then 
		  response.write("<font color=blue>支持</font>")
		else
          response.write("<font color=red>不支持</font>")
		end if	 
		err=0
	  %>
</td>
  </tr>
</table>
<br>
<table width="96%"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td bgcolor="#F6F6F6"><div align="center"><strong> 系 统 技 术 支 持</strong></div></td>
  </tr>
  <tr>
    <td align="left" bgcolor="#FFFFFF">&nbsp;&nbsp; QQ36562573  医院网络推广，医疗行业SEO请加QQ 36562573咨询</td>
  </tr>
</table><br>
</div>
</body>
</html>
