<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>===后台登陆===</title>
<style>
div {
    font-size:12px;
	color:#333333
}
.head_bg {
	background-image: url(images/m_bg_01.jpg);
	width:994px; height:44px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.mid_div {
	width: 994px;height:345px;
	border:1 solid red
}
.mid_div .div1{
    width: 378px;
	float:left;
	text-align:center
}
.mid_div .div2{
    width: 616px;height:345px;
	float:left;
	background-image:url(images/m_bg_02.jpg)
}
.mid_div .div2 .div_01{
    width:340px;height:247px;
	float:left;
	margin-left:2px;margin-top:38px;
}
.mid_div .div2 .div_01 .div_001{
    width:322px; height:156px;
	border:1px solid #AAE3DD;
	margin-top:3px;margin-right:2px
}
.mid_div .div2 .div_01 .div_001 .div_0001{
    width:192px;
    margin-top:15px;
	line-height:1.7;
	text-align:left;
}
.div_00001 {
    width:100%;height:25px;
	margin-top:6px;
	text-align:center;
}

.input_01 {
	border: 1px solid #0099CB;
	height: 18px;
	width: 108px;
}
.foot_01 {
	background-image: url(images/m_bg_04.jpg);
	height: 40px;
	width: 994px;
}
.foot_02 {
    background-color:#FFFFFF;
	height: 164px;
	width: 994px;
	padding-top:3px;padding-left:14px;
	text-align:left
}
</style>
</head>

<body  style=" text-align:center">
<div class="head_bg"></div>
<!------中间开始------------------->
<div class="mid_div">
     <div class="div1">
	         <img src="images/m_left_01.jpg"><br>
		     <img src="images/m_left_02.jpg"><br>
		     <img src="images/m_left_03.jpg">
	 </div>
     <div class="div2">
       <div class="div_01">
			   <img src="images/m_right_01.jpg"><br>
			   <div style="background-color:#EAF8FB; background-image:url(images/m_bg_03.jpg);background-position:right; background-repeat: repeat-y;width:337px;">
               <div class="div_001">
				     <img src="images/m_right_02.jpg">
                     <div class="div_0001">
					      <form action="chklogin.asp" method="post"  name="frm">
					        用户名：
					          <input name="adminname" type="text" class="input_01" id="adminname">
					          <br>
					        
						    密 &nbsp;码：
						    <input name="password" type="password" class="input_01" id="password">
						    <br>
						    <div  class="div_00001" >
							    <input name="" type="image" src="images/login.jpg">&nbsp;&nbsp;<img src="images/reset.jpg" width="50" height="22">
							</div>
					      </form>
					 </div>
              </div>
		      </div>
			  <!---------------底部图片---------------->
			 <div><img src="images/m_right_03.jpg"></div>
			  <!---------------底部图片---------------->
       </div>
		  
	 </div>
</div>
<!------中间结束------------------>
<!------尾部开始------------------>
<div class="foot_01">&nbsp;</div>
<div class="foot_02">
      <img src="images/m_foot_01.jpg">
</div>
<!------尾部结束------------------>
</body>
</html>
