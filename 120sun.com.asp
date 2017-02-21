<%
If Trim(Request.Form("validatecode"))=Empty Or Trim(Session("SNcode"))<>Trim(Request.Form("validatecode")) Then
                 response.write"<script>alert('对不起，请输入正确的验证码！');history.go(-1);</Script>"
                    response.end()
                    end if
%>
<!--#include file="com/conn.asp"-->
<%
function HTMLEncode(fString)
if not isnull(fString) then
fString = replace(fString, ">", "&gt;")
fString = replace(fString, "<", "&lt;")

fString = Replace(fString, CHR(32), "&nbsp;")
fString = Replace(fString, CHR(9), "&nbsp;")
fString = Replace(fString, CHR(34), "&quot;")
fString = Replace(fString, CHR(39), "&#39;")
fString = Replace(fString, CHR(10) & CHR(10), "</P><P> ")
fString = Replace(fString, CHR(10), "<BR> ")
HTMLEncode = fString
end if
end function 
%>
<%
If Request.Form("S_class")="SEO" Then
	response.write "<SCRIPT language=JavaScript>alert('医院网络推广，网站SEO咨询QQ36562573！');"
	response.write "this.location.href='vbscript:history.back()';</SCRIPT>"
	response.end
End If
%>
<%
		  if request.QueryString("action")="savenew" then
		  sql = "select * from tOnlinesign"
		  set rs = server.createobject("adodb.recordset")
		  rs.open sql,conn,1,3
		  rs.addnew
		  rs("xingming")=request.Form("xingming")
                  rs("xingbie")=request.Form("R_xingbie")
		  rs("sfzhao")=request.Form("sfzhao")
                  rs("adds")=request.Form("adds")
                  rs("dhsj")=request.Form("dhsj")
                  rs("bmxx")=request.Form("bmxx")
                  rs("zy1")=request.Form("zy1")
		  rs.Update
		  rs.Close
		  set rs=nothing
		  response.Write  "<script language=javascript>alert('注册会员成功！');window.location.href='index.asp';</script>"
		  response.End
		  end if
		  %>

