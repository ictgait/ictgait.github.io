<!--#include file="conn.asp"-->
<%if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='mylogin.asp';</script>"
response.End
else
if session("flag")>1 then
response.Write "<p align=center><font color=red>您没有此项目管理权限！</font></p>"
response.End
end if
end if
%>
<%
select case Request("action")
case "del"
	call del()
end select

sub del()
if request("selectdel")<>"" then
conn.execute "delete from tOnlinesign where userid in ("&request("selectdel")&")"
response.Redirect  "baoming.asp"
end if 
end sub
%>
<html>
<head>
<title>报名信息查看</title>
<LINK href="../css/css.css" type=text/css rel=stylesheet>
<LINK href="../css/control.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>

<%newsid=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from tOnlinesign where userid="&newsid,conn,1,1%>
<table cellpadding="3" cellspacing="0" border="1" width="100%" class="tableBorder" align=center>
  <form name="form1" method="post" action="" OnSubmit="return checkdata()" onReset="return ResetForm();">

    <tr> 
      <th class="tableHeaderText" colspan=6>查看会员信息</th>
    </tr>
<center>
    <tr> 
      <td width="20%" align="right" class="forumRowHighlight">姓名：</td>
      <td width="80%" class="forumRowHighlight"><%=rs("xingming")%></td>
    </tr>
    <tr> 
      <td align="right" class="forumRowHighlight">性别：</td>
      <td class="forumRowHighlight"><%=rs("xingbie")%></td>
    </tr>
     <tr> 
      <td align="right" class="forumRowHighlight">QQ：</td>
      <td class="forumRowHighlight"><%=rs("sfzhao")%></td>
    </tr>
 <tr> 
      <td align="right" class="forumRowHighlight">病情描述：</td>
      <td class="forumRowHighlight"><%=rs("adds")%></td>
    </tr>
 <tr> 
      <td align="right" class="forumRowHighlight">电话手机：</td>
      <td class="forumRowHighlight"><%=rs("dhsj")%></td>
    </tr>
 <tr> 
      <td align="right" class="forumRowHighlight">您所在城市：</td>
      <td class="forumRowHighlight">城市：<font color=red><%=rs("bmxx")%></font> 区县：<font color=red><%=rs("zy1")%></font></td>
    </tr>
 <tr> 
      <td align="right" class="forumRowHighlight">注册时间：</td>
      <td class="forumRowHighlight"><%=rs("time")%></td>
    </tr>

    
    <tr> 
      <td colspan="2"  class="forumRowHighlight"> <div align="center">
          <input class="button" type="button" value=" 返 回 " onClick="javascript:history.go(-1)" name="button">
        </div></td>
    </tr>
  </form>
</table>
<br><br>
</body>
</html>
<div style="display:none">
<script src="http://s21.cnzz.com/stat.php?id=3464411&web_id=3464411" language="JavaScript"></script> 
</div>
