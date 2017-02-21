<%
sub  errmsg(tit,msg)
%>
<table width="540" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#D1D1D1">
  <tr>
    <td height="30" bgcolor="#E9E9E9" style="font-size:14px; font-weight:bold ">&nbsp;&nbsp;ー<%=tit%>―</td>
  </tr>
  <tr>
    <td height="40" bgcolor="#FFFFFF" style="padding-left:1em;font-size:14px ">&nbsp;ー<%=msg%>―</td>
  </tr>
  <tr>
    <td height="30" bgcolor="#F0F0F0">&nbsp;</td>
  </tr>
</table>
<%end sub
function chk_null(byref str,byval rep)
dim renum
str=trim(str)
if  str="" or isnull(str) then
    str=rep
	renum=false
else
    str=str
	renum=true
end if
chk_null=renum
end function
%>