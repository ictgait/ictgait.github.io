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
super="<strong>ϵ ͳ �� �� �� ��</strong>"
suber="��ӭ"&session("admin")&"���٣�������ߵĹ��ܼ����в�����"
show_item_menu super,suber
%>
<div class="MainDiv"><br>
<table width="96%"  border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td colspan="2" bgcolor="#F6F6F6"><div align="center"><strong>�� �� �� �� Ϣ</strong></div></td>
  </tr>
  <tr>
    <td width="50%" bgcolor="#FFFFFF">��ǰ������<font color=blue><%=Request.ServerVariables("SERVER_NAME")%></td>
    <td bgcolor="#FFFFFF">����������ϵͳ��<font color=blue><%=Request.ServerVariables("OS")%></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">�ű���ʱʱ�䣺<font color=blue><%=Server.ScriptTimeout%></font> ��</td>
    <td bgcolor="#FFFFFF">WEB�����������ƺͰ汾��<font color=blue><%=Request.ServerVariables("SERVER_SOFTWARE")%></font></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">JRO.JetEngine(ACCESS ���ݿ�)��
        <%
	    On Error Resume Next
	    Server.CreateObject("JRO.JetEngine")
		if err=0 then 
		  response.write("<font color=blue>֧��</font>")
		else
          response.write("<font color=red>��֧��</font>")
		end if	 
		err=0
	  %></td>
    <td bgcolor="#FFFFFF">adodb.connection(ACCESS ���ݿ�)��
        <%
	    On Error Resume Next
	    Server.CreateObject("adodb.connection")
		if err=0 then 
		  response.write("<font color=blue>֧��</font>")
		else
          response.write("<font color=red>��֧��</font>")
		end if	 
		err=0
	  %>
</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">FSO�ı��ļ���д��
        <%
	    On Error Resume Next
	    Server.CreateObject("Scripting.FileSystemObject")
		if err=0 then 
		  response.write("<font color=blue>֧��</font>")
		else
          response.write("<font color=red>��֧��</font>")
		end if	 
		err=0
	  %>
</td>
    <td bgcolor="#FFFFFF">CDONTS�ʼ����� SMTP Service��
        <%
	    On Error Resume Next
	    Server.CreateObject("CDONTS.NewMail")
		if err=0 then 
		  response.write("<font color=blue>֧��</font>")
		else
          response.write("<font color=red>��֧��</font>")
		end if	 
		err=0
	  %>
</td>
  </tr>
</table>
<br>
<table width="96%"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td bgcolor="#F6F6F6"><div align="center"><strong> ϵ ͳ �� �� ֧ ��</strong></div></td>
  </tr>
  <tr>
    <td align="left" bgcolor="#FFFFFF">&nbsp;&nbsp; QQ36562573  ҽԺ�����ƹ㣬ҽ����ҵSEO���QQ 36562573��ѯ</td>
  </tr>
</table><br>
</div>
</body>
</html>
