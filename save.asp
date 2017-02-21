<!--#include file="conn.asp"-->
<%
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from [order] ",conn,1,3
rs.addnew
rs("name")=trim(request("name"))
rs("tel")=trim(request("tel"))
rs("class")=trim(request("class"))
rs("resource")=trim(request("resource"))
rs("number")=trim(request("number"))
rs("email")=trim(request("email"))
rs("content")=trim(request("content"))
rs("date")=now()

rs.Update
rs.Close
set rs=nothing
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<script id=clientEventHandlersJS language=javascript>
<!--

function window_onload() {

	window.moveTo(screen.availWidth-320,0)
	window.focus();
		
}

//-->
</script>
<script language="javascript">
<!--
function chk()
{
	if (document.forma.number.value=="")
	{
		alert("请填写您的QQ号码！");
		return false;
	}
	if (document.forma.email.value=="")
	{
		alert("请填写您的E_mail地址！");
		return false;
	}		
	if (document.forma.name.value=="")
	{
		alert("请填写您的姓名！");
		return false;
	}		
	if (document.forma.tel.value=="")
	{
		alert("请填写您的电话/手机！");
		return false;
	}				
}
//-->
</script>
<body bgcolor="#FFFFFF" text="#000000" topmargin="0">

<table width="350" border="0" align="center" cellpadding="4" cellspacing="0" class="css03">
  <tr>
    <td>您的合作请求已经提交完成，我们会及时与您取得联系！</td>
  </tr>
  <tr>
    <td align="center"><a href=# onClick="window.close();"><u>关闭窗口</u></a></td>
  </tr>
</table>

</body>
</html>
