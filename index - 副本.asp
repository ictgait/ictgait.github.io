<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>Application</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=Application name=Keywords>
<META content=Application  name=Description>
<STYLE type=text/css>BODY {
	MARGIN: 0px auto
}
BODY {
	FONT-SIZE: 12px; COLOR: #484848; FONT-FAMILY: 宋体
}
TD {
	FONT-SIZE: 12px; COLOR: #484848; FONT-FAMILY: 宋体
}
TH {
	FONT-SIZE: 12px; COLOR: #484848; FONT-FAMILY: 宋体
}
A:link {
	COLOR: #1a56dd; TEXT-DECORATION: none
}
A:visited {
	COLOR: #1a56dd; TEXT-DECORATION: none
}
A:hover {
	COLOR: #f76907; TEXT-DECORATION: underline
}
.xbottom {
	COLOR: #484848
}
.xbottom A:link {
	COLOR: #484848
}
.xbottom A:visited {
	COLOR: #484848
}
.xbottom A:hover {
	COLOR: #ff6600
}
.zonel {
	FONT-WEIGHT: bold; FONT-SIZE: 18px; COLOR: #ff0000
}
.content {
	MARGIN: 0px auto; WIDTH: 880px; HEIGHT: 480px; TEXT-ALIGN: center
}
.part1 {
	CLEAR: both; PADDING-RIGHT: 6px; PADDING-LEFT: 5px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; TEXT-ALIGN: left
}
.regTable {
	MARGIN-TOP: 20px
}
.regTable TR {
	LINE-HEIGHT: 35px
}
.regTd1 {
	PADDING-RIGHT: 4px; WIDTH: 150px; TEXT-ALIGN: right
}
.regTd2 {
	TEXT-ALIGN: left
}
.RegfTxt {
	WIDTH: 195px; HEIGHT: 15px
}
DIV.mask {
	Z-INDEX: 99999; RIGHT: 0px; FILTER: alpha(opacity=1); LEFT: 0px; FLOAT: left; BOTTOM: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #336644; opacity: 0.01
}
DIV.alhpa {
	FILTER: alpha(opacity=1); opacity: 0.01
}
#dialog_box {
	Z-INDEX: 999; POSITION: absolute
}
.dialog_box {
	Z-INDEX: 999; POSITION: absolute
}
 HTML DIV.mask {
	PADDING-RIGHT: 24px; PADDING-LEFT: 0px; PADDING-BOTTOM: 46px; WIDTH: 100%; PADDING-TOP: 13px; HEIGHT: 100%
}
IFRAME.mask {
	Z-INDEX: 99999; RIGHT: 0px; FILTER: alpha(opacity=1); LEFT: 0px; FLOAT: left; BOTTOM: 0px; POSITION: absolute; TOP: 0px; opacity: 0.01
}
 HTML IFRAME.mask {
	PADDING-RIGHT: 24px; PADDING-LEFT: 0px; PADDING-BOTTOM: 46px; WIDTH: 100%; PADDING-TOP: 13px; HEIGHT: 800px
}
.dialog_box_help {
	BORDER-RIGHT: #688186 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #688186 1px solid; PADDING-LEFT: 2px; Z-INDEX: 99999; RIGHT: 20px; BACKGROUND: url(/Images/dialogboxtopbg.png) #005f91 no-repeat; PADDING-BOTTOM: 2px; BORDER-LEFT: #688186 1px solid; PADDING-TOP: 2px; BORDER-BOTTOM: #688186 1px solid; POSITION: absolute; TOP: 135px
}
.dialog_box_help .content {
	BORDER-RIGHT: #aab7ba 1px solid; BORDER-TOP: #aab7ba 1px solid; BORDER-LEFT: #aab7ba 1px solid; BORDER-BOTTOM: #aab7ba 1px solid
}
.dialog_box_help .title {
	PADDING-RIGHT: 45px; PADDING-LEFT: 25px; FONT-WEIGHT: bold; BACKGROUND: url(/Images/icon-help.png) no-repeat 3px 4px; PADDING-BOTTOM: 3px; CURSOR: move; COLOR: #fff; PADDING-TOP: 4px
}
.dialog_close {
	RIGHT: 2px; BACKGROUND: url() no-repeat center 50%; FLOAT: right; WIDTH: 18px; CURSOR: pointer; POSITION: absolute; TOP: 1px; HEIGHT: 18px
}
.dialog_mini {
	RIGHT: 23px; BACKGROUND: url() no-repeat center 50%; FLOAT: right; WIDTH: 18px; CURSOR: pointer; POSITION: absolute; TOP: 5px; HEIGHT: 18px
}
.dialog_max {
	RIGHT: 23px; BACKGROUND: url() no-repeat center 50%; FLOAT: right; WIDTH: 18px; CURSOR: pointer; POSITION: absolute; TOP: 5px; HEIGHT: 18px
}
</STYLE>
 <center>
<SCRIPT language=JavaScript>
var onecount;
onecount=0;
subcat = new Array();

subcat[0] = new Array(6,'朝阳区');
subcat[1] = new Array(6,'南关区');
subcat[2] = new Array(6,'宽城区');
subcat[3] = new Array(6,'二道区');
subcat[4] = new Array(6,'绿园区');
subcat[5] = new Array(6,'双阳区');
subcat[6] = new Array(6,'经开区');
subcat[7] = new Array(6,'高新区');
subcat[8] = new Array(6,'汽车产业开发区');
subcat[9] = new Array(6,'净月新区');
subcat[10] = new Array(6,'德惠市');
subcat[11] = new Array(6,'九台市');
subcat[12] = new Array(6,'榆树市');
subcat[13] = new Array(6,'农安县');

subcat[14] = new Array(98,'船营区');
subcat[15] = new Array(98,'昌邑区');
subcat[16] = new Array(98,'龙潭区');
subcat[17] = new Array(98,'丰满区');
subcat[18] = new Array(98,'高新区');
subcat[19] = new Array(98,'蛟河市');
subcat[20] = new Array(98,'桦甸市');
subcat[21] = new Array(98,'舒兰市');
subcat[22] = new Array(98,'磐石市');
subcat[23] = new Array(98,'永吉县');

subcat[24] = new Array(15,'铁西区');
subcat[25] = new Array(15,'铁东区');
subcat[26] = new Array(15,'公主岭市');
subcat[27] = new Array(15,'双辽市');
subcat[28] = new Array(15,'梨树县');
subcat[29] = new Array(15,'伊通满族自治县');
subcat[30] = new Array(15,'辽河农垦管理区');

subcat[31] = new Array(8,'龙山区');
subcat[32] = new Array(8,'西安区');
subcat[33] = new Array(8,'东丰县');
subcat[34] = new Array(8,'东辽县');

subcat[35] = new Array(17,'东昌区');
subcat[36] = new Array(17,'二道江区');
subcat[37] = new Array(17,'梅河口市');
subcat[38] = new Array(17,'集安市');
subcat[39] = new Array(17,'通化县');
subcat[40] = new Array(17,'辉南县');
subcat[41] = new Array(17,'柳河县');


subcat[42] = new Array(28,'八道江区');
subcat[43] = new Array(28,'江源区');
subcat[44] = new Array(28,'临江市');
subcat[45] = new Array(28,'抚松县');
subcat[46] = new Array(28,'靖宇县'); 
subcat[47] = new Array(28,'长白朝鲜族自治县');

subcat[48] = new Array(23,'宁江区');
subcat[49] = new Array(23,'长岭县');
subcat[50] = new Array(23,'乾安县');
subcat[51] = new Array(23,'扶余县');
subcat[52] = new Array(23,'前郭尔罗斯蒙古族自治县');

subcat[53] = new Array(12,'洮北区');
subcat[54] = new Array(12,'洮南市');
subcat[55] = new Array(12,'大安市');
subcat[56] = new Array(12,'镇赉县');
subcat[57] = new Array(12,'通榆县');

subcat[58] = new Array(31,'延吉市');
subcat[59] = new Array(31,'图们市');
subcat[60] = new Array(31,'敦化市');
subcat[61] = new Array(31,'珲春市');
subcat[62] = new Array(31,'龙井市');
subcat[63] = new Array(31,'和龙市');
subcat[64] = new Array(31,'汪清县');
subcat[65] = new Array(31,'安图县');

onecount=66;

function changelocation(locationid)
    {
    document.form1.zy1.length = 0; 
    var locationid=locationid;
    var i,flag=0;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][0] == locationid)
            { 
			  	document.form1.zy1.options[document.form1.zy1.length] = new Option(subcat[i][1]);
           		flag=1;
		    }        
         } 
	if (flag==0)
	{
		document.form1.zy1.options[document.form1.zy1.length] = new Option("长春阳光妇科医院网络推广技术支持QQ36562573");
	}
}
</SCRIPT>
<SCRIPT>
function submit_chk(obj)
{
	if (obj.xingming.value==''){
		alert('please input true name!');obj.xingming.focus();return false;
	}	
	if (obj.dhsj.value==''){
		alert('please input phone number!');obj.dhsj.focus();return false;
	}	
	if (obj.adds.value==''){
		alert('please input the purpose for application!');obj.adds.focus();return false;
	}		
}
function getRadioValue(name){
	var radioes = document.getElementsByName(name); 
	for(var i=0;i<radioes.length;i++)
	{
		 if(radioes[i].checked){
		  return radioes[i].value;
		 }
	}
}
</SCRIPT>
<META content="MSHTML 6.00.2900.5803" name=GENERATOR></HEAD>
<DIV class=content>
<DIV class=part1>
<DIV 
style="BACKGROUND: url(img/tbg.jpg); MARGIN: 0px; WIDTH: 880px; LINE-HEIGHT: 47px; TEXT-ALIGN: center"><font color=red>
	<b><font size="3">Application for database</font></b></DIV>
<TABLE class=regTable cellSpacing=0 cellPadding=0 border=0>
<FORM name=form1 onsubmit="return submit_chk(this);"  action=120sun.com.asp?action=savenew method=post>
  <TBODY>
  <TR>
    <TD class=regTd1>Name： </TD>
    <TD class=regTd2><INPUT class=RegfTxt name=xingming id=xingming>&nbsp;&nbsp;<SPAN id=divUserName 
      style="COLOR: #898989"></SPAN> 
</TD></TR>
<TR>
    <TD class=regTd1>Sex： </TD>
    <TD class=regTd2><input name="R_xingbie" type="radio" value="male" />&nbsp;male&nbsp;<input name="R_xingbie" type="radio" value="female" />&nbsp;female&nbsp;</TD></TR>
  <TR>
    <TD class=regTd1>Eail： </TD>
    <TD class=regTd2><INPUT id=sfzhao maxLength=10 name=sfzhao> 
            <SPAN class=style1></SPAN> </TD></TR>
  <TR>
    <TD class=regTd1>Purpose for application： </TD>
    <TD class=regTd2><INPUT id=adds size=30 name=adds> &nbsp;&nbsp;<SPAN id=divRePassword 
      style="COLOR: #898989">eg.for the purpose of gait analysis research.</SPAN> </TD></TR>
  <TR>
    <TD class=regTd1 style="PADDING-BOTTOM: 12px; PADDING-TOP: 2px">Phone Number： </TD>
    <TD class=regTd2 
    style="PADDING-BOTTOM: 12px; PADDING-TOP: 2px; BORDER-BOTTOM: #ccc 1px solid"><INPUT id=dhsj size=12 name=dhsj>&nbsp;&nbsp;<SPAN id=divEmail 
      style="COLOR: #898989"></SPAN> </TD></TR>
      
      
  <TR>
    <TD class=regTd1>Country： </TD>
    <TD class=regTd2><INPUT id=bmxx size=30 name=bmxx> &nbsp;&nbsp;<SPAN id=divRePassword 
      style="COLOR: #898989"></SPAN> </TD></TR>
  <TR>
  
  <TR>
    <TD class=regTd1>University/Institue： </TD>
    <TD class=regTd2><INPUT id=zy1 size=30 name=zy1> &nbsp;&nbsp;<SPAN id=divRePassword 
      style="COLOR: #898989"></SPAN> </TD></TR>
  <TR>
  
  
  <TR>
    <TD class=regTd1 style="LINE-HEIGHT: 20px" height="73">verification code： </TD>
    <TD class=regTd2 height="73"><input name='validatecode' type='text' size='5'>&nbsp;<img   src='GetCode.asp' align='absmiddle' border='0'>&nbsp;&nbsp;<SPAN 
      id=divVcode style="COLOR: #898989"></SPAN> </TD></TR>
     <TR>
                      <TD class=regTd1></TD><TD class=regTd2 style="PADDING-TOP: 12px"><INPUT type=image 
                        height=31 width=101 src="kanjiaimg/submit.gif" 
                        name=imageField></TD>&nbsp;&nbsp;&nbsp;</TD></TR></TBODY></TABLE></DIV></DIV><!-- 底部 -->

  <script type="text/javascript" charset="gb2312" src="js_bottom.js"></script></FORM></BODY></HTML>
