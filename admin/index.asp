<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="gb2312" />
<meta name="author" content="QQ173573275" />
<meta name="Copyright" content="QQ173573275" />
<meta name="keywords" content="QQ173573275" />
<meta name="description" content="QQ173573275" />
<title>后台管理</title>
</head>
<%
if session("admin")="" then
   response.Redirect("mylogin.asp")
else
    %>
    <frameset rows="71,*" framespacing="0" border="0" frameborder="0">
    <frame src="ConHead.asp" scrolling="no" name="Head" noresize>
      <frameset cols="152,*">
      <frame src="ConMenu.asp">
       <frame src="main.asp"  name="MainContent" scrolling="yes" noresize>
     </frameset>
    </frameset><noframes></noframes>
  <body style="background:#000000">
</body>
<%
end if
%>
</html>