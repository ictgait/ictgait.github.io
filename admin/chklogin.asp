<!--#include file=conn.asp-->
<!--#include file="../include/md5.asp" -->

<%
	dim sql
	dim rs
	dim adminname
	dim password
	adminname=replace(trim(request.form("adminname")),"'","")
	password=replace(trim(Request.form("password")),"'","")
	password=md5(password)
    sql="select * from Net_Admin where password='"&password&"' and adminname='"&adminname&"' and is_audit=true"
	set rs=conn.execute(sql)
 	if not(rs.bof and rs.eof) then
 		if password=rs("password") then
			session("admin")=rs("adminname")
			session("flag")=rs("flag")
			Response.Redirect "index.asp"
 		else
			call Error
 		end if
	else
		call Error()
	end if
	rs.close
	set rs=nothing
	conn.close
	set conn=nothing
'=======================================
	sub Error()
		response.write "   <html><head><link rel='stylesheet' href='../css/css.css'></head><body>"
	    	response.write "   <br><br><br>"
	    	response.write "    <table align='center' width='300' border='0' cellpadding='4' cellspacing='0'>"
	    	response.write "      <tr > "
	    	response.write "        <td class='title' colspan='2' height='15'> "
	    	response.write "          <div align='center'>����: ȷ�����ʧ��!</div>"
	    	response.write "        </td>"
	    	response.write "      </tr>"
	    	response.write "      <tr> "
	    	response.write "        <td class='tdbg' colspan='2' height='23'> "
	    	response.write "          <div align='center'><br><br>"
	    	response.write "      �û��������������û���û�б����!!! <br><br>"
	    	response.write "        <a href='javascript:onclick=history.go(-1)'>����</a>"        
	    	response.write "        <br><br></div></td>"
	    	response.write "      </tr></table></body></html>" 
	end sub
%>

