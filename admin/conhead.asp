<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gb2312">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="gb2312" />
<link rel="stylesheet" rev="stylesheet" href="../css/control.css" type="text/css" media="all" />
<title>后台管理-顶部</title>
</head>
<body class="headbody">
<%
if session("admin")="" then 
     Response.Redirect("mylogin.asp")
else
%>
 <div class="headmain">
   <div style="height:70px;background:url(images/Control/Pic2.jpg) no-repeat;">
   <div style="padding-top:53px;padding-left:70px;font-size:11px;font-family:verdana;font-weight:bold;color:#fff;"></div>
   </div>
 </div>
</body>
</html>
<%
end if
%>