
<%
dim conn
dim connstr
dim db
dim super,suber
db="../data#120sun\@QQ36562573.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
conn.Open connstr

sub  show_item_menu(super,suber)
%>
<table width="100%"  border="0" align="center" cellpadding="5" cellspacing="0" >
  <tr>
    <td class="CTitle"><strong><%=super%></strong></td>
  </tr>
  <tr>
    <td class="SubMenu" style="border-left:1 solid #bbbbbb;border-right:1 solid gray"><div align="left" ><%=suber%></div></td>
  </tr>
</table>
<%
end  sub
%>