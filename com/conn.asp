<%
  '������
set conn=server.createobject("adodb.connection")
Conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & Server.MapPath("data#120sun\@QQ36562573.mdb") 
  '**************************************************  
  
  '�ر����ݼ�
  sub rsclose(rs) 
    rs.close 
    set rs = nothing 
  End sub
  '**************************************************
  
  '�ر�����
  sub connclose(conn)
    conn.close 
    set conn = nothing 
  End sub
  '**************************************************
%>
