<%
class  page_run
dim default_pgsize,rscount,pgsize,pgcount
private Sub Class_Initialize 
default_pgsize=10
end sub
public function  get_pgnow()
dim pgnow
pgnow=request("pages")
if   pgnow="" or isnull(pgnow) or isnumeric(pgnow)=false then
     pgnow=1
else
     pgnow=int(pgnow)
	 if pgnow<=0 then  pgnow=1
	 if  pgnow>=pgcount then
	     pgnow=pgcount
	 end if	 
end if
get_pgnow=pgnow	 
end function
public function  get_pgsize(snum)
if  isnumeric(snum)=false then
	 pgsize=default_pgsize
else
     pgsize=int(snum)
end  if	
get_pgsize=pgsize	   
end function
public function  get_rscount(sql)
set rs=conn.execute(sql)
rscount=rs("ss")
rs.close
set rs=nothing
get_rscount=rscount
end function
public function get_pgcount()
     'rscount=get_rscount()'��Ҫ���rscount,����ڴ˺�������֮ǰ���rscount�������ڴ˵���get_rscount
	 if  rscount mod pgsize=0 then
	      pgcount=rscount \ pgsize
	 else
	      pgcount=rscount \ pgsize+1
	 end if
get_pgcount=pgcount
end function
public function  get_pgurl(temp_url)
get_pgurl=temp_url
end  function
end  class

class  check_string
public FUNCTION DH_REPLACE_STRING(STR)
    DIM STR1
    STR1=STR
    if STR1="" or isnull(STR1) then
        STR1="[NULL]"
    else
        STR1=replace(STR1,"<","&lt;")
        STR1=replace(STR1,">","&gt;")
        STR1=replace(STR1,"'","��")
        STR1=replace(STR1,chr(34),"&quot;")
        STR1=replace(STR1,"��",",")
    end if
    DH_REPLACE_STRING=STR1
END FUNCTION

public FUNCTION DH_GOBACK_STRING(STR)
    DIM STR1
    STR1=STR
    if STR1="" or isnull(STR1) then
        STR1="[NULL]"
    else
        STR1=replace(STR1,"&lt;","<")
        STR1=replace(STR1,"&gt;",">")
        STR1=replace(STR1,"��","'")
        STR1=replace(STR1,"&quot;",chr(34))
        STR1=replace(STR1,",","��")
		STR1=replace(STR1,chr(9),"")
		STR1=replace(STR1,chr(13),"")
    end if
    DH_GOBACK_STRING=STR1
END FUNCTION
'**************���email_url��**********************
public function check_email_url(str,tpname)
Dim re,rv
Set re = New RegExp
if tpname="email"  then
     re.Pattern = "^(\w+)@([\w+])+\.([\w]{2,4})$"
elseif tpname="url" then
     re.pattern="^([\w]{3,6}):\/\/([^/:]+)(:\d*)?([^# ]*)"
end if
re.Global = True
re.IgnoreCase = True
rv=re.Test(str) 
check_email_url=rv
end function
'**************************���գ����ֵ�****************
public function reisnum(str)
    if reisnull(str)=false or isnumeric(str)=false then
        reisnum=false
    else
        reisnum=true
    end if
end function
public function reisnull(str)
    if str="" or isnull(str) then
        reisnull=false
    else
        reisnull=true
    end if
end function
public FUNCTION chk_len(str,min,max)
    IF len(str)-min<0 or len(str)-max>0 THEN
	    chk_len=false
	ELSE
	    chk_len=true
	END IF
END FUNCTION
public function sub_len(str,leng)
if str="" or isnull(str) then 
	str="[NULL]"
else 
	if len(str)>leng then
		str=left(str,leng)&"..."
	else 
	    str=str
	end if
end if
sub_len=str
end function
PUBLIC function check_str(str,isnul,islegal,cristr,isnum,leng,charmin,charmax,isint,flag,object)
'isnul�ж��Ƿ�Ϊ�գ�1�жϣ�0���.
'isnum�ж��Ƿ�ʶ�֣�1�жϣ�0���.
'leng�ж��ַ����ȣ�1�жϣ�0���.
'islegal�ж��Ƿ񺬷Ƿ��ַ���1�жϣ�0���.
'���islegal=1 ��cristr.(��Ҫ�����׼�ַ���)
'isint�ж��Ƿ�������1�жϣ�0���.
'flag�Ƿ�����Ϣ�ı�־.
'flag=0��ʾ�ַ���Ϊ��.
'flag=1��ʾ��׼�ַ���Ϊ��.
'flag=2��ʾ�ַ����Ϸ�.
'flag=3��ʾ����������.
'flag=4��ʾ�ַ����ȴ���.
'flag=5��ʾ���벻������.
'flag=6��ʾ����ɹ�.

flag=""
str=chk_into(str)
if str="" then 
	flag=0
end if 
if isnul=1 then 
	if str="" then 
		flag=0
	end if 
end if
if islegal=1 then 
	 	if cristr="" then 
			flag=1
		else 	
			for i=1 to len(str)
				MyVar = Mid(str,i,1)
    			if instr(cristr,myvar)=false  then 
					flag=2
    			else  
       				i=i+1
    			end if
 			next     
	 	end if
end if
if isnum=1 then 
	if isnumeric(str)=false then
				flag=3
	end if
end if
if leng=1 then
		if chk_len(str,charmin,charmax)=false then
				flag=4 
		end if
end if	  
if isint=1 then 
		if isInteger(str)=false then 
			flag=5
		end if
end if	
flag=6
select  case  flag
    case  0:msg=msg&"<li>��"&object&"���ַ���������Ϊ�գ�</li><br>"
	case  1:msg=msg&"<li>�������׼�ַ������Ա��ڱȽϣ�</li><br>"
	case  2:msg=msg&"<li>��"&object&"���ַ����к��зǷ��ַ���</li><br>"
	case  3:msg=msg&"<li>��"&object&"���������������ͣ�</li><br>"
	case  4:msg=msg&"<li>��"&object&"���ַ�������Ӧ��"&charmin&"--"&charmax&"֮�䣡</li><br>"
	case  5:msg=msg&"<li>��"&object&"��������������</li><br>"
end select	
end function 
end  class

class fso_perform
Private Sub Class_Initialize 
dim  fso
Set fso = CreateObject("Scripting.FileSystemObject")
end sub
Private Sub Class_Terminate 
set fso=nothing
end sub
public function is_exist(what,path)
     if  what="file" then
         is_exist=fso.FileExists(path)
	 elseif  what="folder" then
	     is_exist=fso.FolderExists(path)
	 else
	     is_exist=fso.DriveExists(path)
	 end if	  
End Function

public Function Createfolder(path)
Dim f
if  is_exist("folder",path)=false then
     Set f = fso.CreateFolder(path)
     CreateFolder = f.Path
else
     CreateFolder = path
end if	 
End Function

public  sub delete_menu(what,path)
if  what="file" then
    if is_exist("file",path) then 
	    fso.DeleteFile(path)
	end if	
elseif what="folder" then
    if is_exist("folder",path) then 
        fso.DeleteFolder(path)
	end if	
end if
end  sub
public function get_newname(ftype)
dim  temp
temp=now()
get_newname=year(temp)&month(temp)&day(temp)&hour(temp)&Minute(temp)&Second(temp)&"."&ftype
end function

public function upload_file(formname,fsize,ftype,furl)
dim  ref
isok=0
ref="<meta http-equiv='refresh' content='2;URL=upfile_form.asp'>"
ref1="<a  href='upfile_form.asp'>����</a>"
set m_upload=new upload
set file1=m_upload.file("pic")
if  file1.filesize<=0 then
    renum=0 
else
    if  file1.FileSize-fsize>0  then
	    renum=1
	else
	    temp_type=file1.filetype
	    if instr(ftype,temp_type)=0 then
	          renum=2
		else
		      temp_name=get_newname(temp_type)
			  if  instr(furl,":\")>0 or instr(furl,":")>0 then
			         furl=createfolder(furl)
			  else '���·��
			         furl=createfolder(server.MapPath(furl))
			  end if		 
			  savepath=furl&"\"&temp_name
			  file1.SaveAs savepath
			  renum=3:isok=1
		end if
	end if
end if
set file1=nothing
set m_upload=nothing
select case  renum
    case 0:message="��û��ѡ��Ҫ�ϴ����ļ���"&ref1
    case 1:message="��Ҫ�ϴ����ļ�̫���ļ���СӦ��"&fsize&"���ڣ�"&ref1   
    case 2:message="��ֻ���ϴ�"&ftype&"���͵��ļ���"&ref1
    case 3:message="�ļ��ϴ��ɹ���"&ref1	  
end select
upload_file=renum
end function
end class  
%>