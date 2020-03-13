<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>信息查询</title>
<script type="text/javascript"> 
function checkemail(str){
	var sReg = /[_a-zA-Z\d\-\.]+@[_a-zA-Z\d\-]+(\.[_a-zA-Z\d\-]+)+$/;
	if ( !sReg.test(str) )
	{
	return false;
	}
	return true;
	                    }
function button_onclick()
{
var xh=document.getElementById("xh").value;
var xm=document.getElementById("xm").value;
var xb=document.getElementById("xb").value;
var email=document.getElementById("email").value;
var xy=document.getElementById("xy").value;
var score=document.getElementById("score").value;
var score2=document.getElementById("score2").value;
var score3=document.getElementById("score3").value;
var score4=document.getElementById("score4").value;
var score5=document.getElementById("score5").value;
var score6=document.getElementById("score6").value;
var score7=document.getElementById("score7").value;
var flag = true;
if(xh.length==0)
	{
	 alert("学号不能为空，请重新输入！");
	 flag = false;
	}
else if(xm.length==0)
{
	 alert("姓名不能为空，请重新输入！");
	 flag = false;
	}
else if(xb.length==0)
{
 alert("性别不能为空，请重新输入！");
 flag = false;
}
else if(!checkemail(email))
	{
	alert("邮箱格式不正确，请重新输入！");
	flag = false;
	}
else if(xy.length==0)
	{
	alert("学院不能为空。请重新输入！");
	flag = false;
	}
	if(flag){
		document.getElementById("fo").submit();
	}
}
</script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
	ul{
		list-style: none;
		padding:0;
		overflow:hidden;
		display:table;
		height:auto;
		margin:0 auto;
	}
	a:link,a:visited{
		color:#ffffff;
		text-transform: uppercase;
		background-color: #bebebe;
		font-weight:bold;
		display: block;
		width:120px;
		padding: 20px;
		text-align: center;
		text-decoration: none;
	}
	a:hover,a:active{
		color:#ffffff;
		text-transform: uppercase;
		background-color:red;
		font-weight:bold;
		display: block;
		width:120px;
		padding: 20px;
		text-align: center;
		text-decoration: none;
	}
	li{
		float:left;
	}
#wrap {
	height: 839px;
	width: 100;
	background-image: url(4.jpg);
	background-repeat: no-repeat;
	background-position: center center;
	position: relative;
}
#wrap .logGet {
	height: 408px;
	width: 368px;  
	position: absolute;
	background-color: #FFFFFF;
	top: 0%;
	right: 70%;
}
.logC a button {
	width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}
.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 28px;
	margin-top: 30px;
	width: 86%;
}
#wrap .logGet .logD.logDtip {
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 60px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
.logGet .lgD img {
	position: absolute;
	top: 12px;
	left: 8px;
}
.logGet .lgD input {
	width: 100%;
	height: 42px;
	text-indent: 2.5rem;
}
#wrap .logGet .lgD {
	width: 86%;
	position: relative;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
}
#wrap .logGet .logC {
	width: 86%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
.btns { 
      width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 20px;
      }  

.title {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	font-size: 36px;
	height: 40px;
	width: 30%;
}
 
.copyright {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	height: 60px;
	width: 40%;
	text-align:center;
}
	
 
#foot .copyright .img {
	width: 100%;
	height: 24px;
	position: relative;
}
.copyright .img .icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(%E7%94%B5%E5%AD%90%E9%82%AE%E4%BB%B6.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
	
.copyright .img .icon1 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(%E5%9C%B0%E5%9D%80.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
.copyright .img .icon2 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
#foot .copyright p {
	height: 24px;
	width: 100%;
}
</style>
</head>
<body>
<h1><font color="red">${requestScope.info }</font></h1>
<div class="header" id="head">
  <div class="title">企业人事管理系统</div>
	
</div>
<form action="<c:url value='/StuServlet?method=add'/>" method="post"  id="fo">	
<div class="wrap" id="wrap">
	<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">成绩信息添加</p>
			</div>
			<!-- 输入框 -->
			
		         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别<br>
				&nbsp;&nbsp;<input type="text" name="xh" id="xh" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="xm" id="xm" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="xb" id="xb" style="width:50px;">
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学院&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;形式与政策分数<br>
				&nbsp;&nbsp;<input type="text" name="email" id="email" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="xy" id="xy" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="score" id="score" style="width:50px;">
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国近代史纲要 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Web动态网页设计<br>
				&nbsp;&nbsp;<input type="text" name="score2" id="score2" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="score3" id="score3" style="width:80px;">
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计算机网络B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;嵌入式A<br>
				&nbsp;&nbsp;<input type="text" name="score4" id="score4" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="score5" id="score5" style="width:80px;">
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计算机图形学B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数据挖掘B<br>
				&nbsp;&nbsp;<input type="text" name="score6" id="score6" style="width:80px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="score7" id="score7" style="width:80px;">
            <br>
            <br>
            <br>
			<div>
				<input type="button" class="btns" value="添加" onclick="button_onclick();">
			</div>
			<ul>
			<li><a href="#返回">返回</a></li>
			</ul>
		</div>
</div>
</form>
</body>
</html>