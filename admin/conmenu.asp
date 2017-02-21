<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gb2312">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="gb2312" />
<link rel="stylesheet" rev="stylesheet" href="../css/control.css" type="text/css" media="all" />
<title>后台管理-菜单</title>
<script>
var LastItem=null
function MenuClick(obj,url){
 if (LastItem!=null){
  LastItem.className="menuA"
 }
 obj.className="menuAS"
 LastItem=obj
 obj.blur()
 if (url.length>0) parent.MainContent.location=url;
}
</script>
</head>
<body class="menuBody" onload="MenuClick(document.getElementById('index'),'main.asp')">
<%
if  session("admin")="" then
    response.Redirect("mylogin.asp")
else
%>
 <div class="menu">
 <img border="0" src="images/Control/menuS.jpg" width="152" height="8"></div>
 <ul class="menuUL">
   <li><a id="index" href="javascript:void(0)" class="menuA" onclick="MenuClick(this,'main.asp')"><img src="images/Control/icon/icon0.gif" alt="" border="0" class="MenuIcon"/>后台首页</a></li>
 <li><a href="javascript:void(0)" class="menuA" onclick="MenuClick(this,'baoming.asp')"><img src="images/Control/icon/icon6.gif" alt="" border="0" class="MenuIcon"/>会员信息查看</a></li>
   <li><a href="javascript:void(0)" class="menuA" onclick="MenuClick(this,'manageadmin.asp')"><img src="images/Control/icon/icon8.gif" alt="" border="0" class="MenuIcon"/>修改密码</a></li>
   <li><a href="javascript:void(0)" class="menuA" onclick="MenuClick(this,'exitsystem.asp')"><img src="images/Control/icon/icon9.gif" alt="" border="0" class="MenuIcon"/>退出</a></li>

</ul>
<table width="140" border="0">
  <tr>
    <td height="62"><a href="http://www.52725.com" target="_blank"></a></td>
  </tr>
</table>

</body>
</html>
<%
end if
%>