<%
  '打开链接
set conn=server.createobject("adodb.connection")
Conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & Server.MapPath("data#120sun\@QQ36562573.mdb") 
  '**************************************************  
  
  '关闭数据集
  sub rsclose(rs) 
    rs.close 
    set rs = nothing 
  End sub
  '**************************************************
  
  '关闭链接
  sub connclose(conn)
    conn.close 
    set conn = nothing 
  End sub
  '**************************************************
%>
