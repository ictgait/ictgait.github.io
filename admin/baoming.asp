<!--#include file="conn.asp"-->
<%if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='mylogin.asp';</script>"
response.End
else
if session("flag")>1 then
response.Write "<p align=center><font color=red>��û�д���Ŀ����Ȩ�ޣ�</font></p>"
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
<title>��Ա��Ϣ�鿴</title>
<LINK href="../css/css.css" type=text/css rel=stylesheet>
<LINK href="../css/control.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
<table width="102%" border="0" align=center cellpadding="0" cellspacing="1" bordercolor="#CCCCCC" bgcolor="#E2E3E4">
  <tr>
    <th class="tableHeaderText" colspan=7 height=25>��Ա�б�</th>
  </tr>
<center>
  <%'��ʼ��ҳ
				Const MaxPerPage=20 
   				dim totalPut   
   				dim CurrentPage
   				dim TotalPages
   				dim j
   				dim sql
    				if Not isempty(request("page")) then
      				currentPage=Cint(request("page"))
   				else
      				currentPage=1
   				end if 
		 set rs=server.createobject("adodb.recordset")
	rs.open "select * from tOnlinesign order by userid desc",conn,1,1
		  
				if err.number<>0 then
				response.write "���ݿ���������"
				end if
				
  				if rs.eof And rs.bof then
       				Response.Write "<p align='center' class='contents'> ��û�л�Ա��Ϣ��</p>"
   				else
	  				totalPut=rs.recordcount

      				if currentpage<1 then
          				currentpage=1
      				end if

      				if (currentpage-1)*MaxPerPage>totalput then
	   					if (totalPut mod MaxPerPage)=0 then
	     					currentpage= totalPut \ MaxPerPage
	   					else
	      					currentpage= totalPut \ MaxPerPage + 1
	   					end if
      				end if

       				if currentPage=1 then
            			showContent
            			showpage totalput,MaxPerPage,"baoming.asp"
       				else
          				if (currentPage-1)*MaxPerPage<totalPut then
            				rs.move  (currentPage-1)*MaxPerPage
            				dim bookmark
            				bookmark=rs.bookmark
            				showContent
             				showpage totalput,MaxPerPage,"baoming.asp"
        				else
	        				currentPage=1
           					showContent
           					showpage totalput,MaxPerPage,"baoming.asp"
	      				end if
	   				end if
   				   				end if

   				sub showContent
       			dim i
	   			i=0

			%>
  <form name="form1" method="post" action="baoming.asp?action=del">
    <tr>
      <td width="20%" bgcolor="#FFFFFF"><div align="center">����</div></td>
      <td width="20%" bgcolor="#FFFFFF"><div align="center">�Ա�</div></td>
      <td width="20%" bgcolor="#FFFFFF"><div align="center">�绰/�ֻ�</div></td>
      <td width="20%" bgcolor="#FFFFFF"><div align="center">ע��ʱ��</div></td>
      <td width="20%" bgcolor="#FFFFFF"><div align="center">����</div></td>
    </tr>
    <%do while not rs.eof%>
    <tr>
      <td bgcolor="#FFFFFF"><div align="center"><a href=onlinesignview.asp?id=<%=rs("userid")%>><%=trim(rs("xingming"))%></a></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><%=trim(rs("xingbie"))%></div></td>
      <td bgcolor="#FFFFFF">
      <div align="center"><%=trim(rs("dhsj"))%></div></td>
      <td bgcolor="#FFFFFF">
      <div align="center"><%=trim(rs("time"))%></div></td>
      <td bgcolor="#FFFFFF"><div align="center">
        <input name="selectdel" type="checkbox" id="selectdel" value=<%=rs("userid")%>>
      </div></td>
    </tr>
    <%i=i+1
			if i>=MaxPerPage then Exit Do
			rs.movenext
		  loop
		  rs.close
		  set rs=nothing%>
    <tr>
      <td height="20" align="left" bgcolor="#FFFFFF" >&nbsp;</td>
      <td height="20" align="left" bgcolor="#FFFFFF" >&nbsp;</td>
      <td height="20" align="left" bgcolor="#FFFFFF" >&nbsp;</td>
      <td height="20" align="left" bgcolor="#FFFFFF" >&nbsp;</td>
      <td height="20" align="left" bgcolor="#FFFFFF" ><div align="center">
        <input class="button" type="submit" name="Submit" value="ɾ����ѡ">
        
        ȫѡ
  <input type="checkbox" name="checkbox" value="Check All" onClick="mm()">
      </div></td>
    </tr>
  </form>
</table>
<%  
	End Sub     
	Function showpage(totalnumber,maxperpage,filename)  
  				Dim n
  				
				If totalnumber Mod maxperpage=0 Then  
					n= totalnumber \ maxperpage  
				Else
					n= totalnumber \ maxperpage+1  
				End If
				
				Response.Write "<form method=Post action="&filename&">"  
				Response.Write "<p align='center' class='contents'> "  
				If CurrentPage<2 Then  
					Response.Write "<font class='contents'>��ҳ ��һҳ</font> "  
				Else  
					Response.Write "<a href="&filename&"?page=1 class='contents'>��ҳ</a> "  
					Response.Write "<a href="&filename&"?page="&CurrentPage-1&" class='contents'>��һҳ</a> "  
				End If
				
				If n-currentpage<1 Then  
					Response.Write "<font class='contents'>��һҳ βҳ</font>"  
				Else  
					Response.Write "<a href="&filename&"?page="&(CurrentPage+1)&" class='contents'>"  
					Response.Write "��һҳ</a> <a href="&filename&"?page="&n&" class='contents'>βҳ</a>"  
				End If  
					Response.Write "<font class='contents'> ҳ�Σ�</font><font class='contents'>"&CurrentPage&"</font><font class='contents'>/"&n&"ҳ</font> "  
					Response.Write "<font class='contents'> ����"&totalnumber&"����Ա��Ϣ " 
					Response.Write "<font class='contents'>ת����</font><input type='text' name='page' size=2 maxlength=10 class=smallInput value="&currentpage&">"  
					Response.Write "&nbsp;<input type='submit'  class='button' value='GO' name='cndok'></form>"  
				End Function  
%>
<br>
</body>
</html>
<script language=javascript>
function mm()
{
   var a = document.getElementsByTagName("input");
   if(a[0].checked==true){
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = false;
   }
   else
   {
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = true;
   }
}
</script>