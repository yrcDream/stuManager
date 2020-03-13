<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>信息修改</title>
<script type="javascript" src="/stuManagerV2/js/jquery-1.3.1.js"></script>
<script type="text/javascript"> 
function checkemail(str){
	var sReg = /[_a-zA-Z\d\-\.]+@[_a-zA-Z\d\-]+(\.[_a-zA-Z\d\-]+)+$/;
	if ( !sReg.test(str) )
	{
	return false;
	}
	return true;
	                    }
function sumbit()
{
	var username=document.getElementById("name").value;
	var email=document.getElementById("email").value;
	var pwd=$(".pwd").val();
	var pwd1=$(".newPwd").val();
	<%-- var oldPwd  = '<%=session.getAttribute("pwd")%>'; --%>
	var flag = true;
	if(username.length==0){
		alert("修改后的用户名不能为空！请重新输入。");
		flag = false;
	}
	else if(!checkemail(email)){
		alert("修改后的电子邮箱不符合格式！请重新输入。");
		flag = false;
	}
	else if(pwd.length==0)
	{
		alert("原密码不能为空！请重新输入。");
   		 return false;
	}else if(pwd1.length==0){
		alert("修改后的密码不能为空！请重新输入。");
		flag = false;
	}
	return flag;
}
</script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
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
<div class="header" id="head">
  <div class="title">企业人事管理系统</div>
	
</div>
<form action="<c:url value='/gm/GoModify.action'/>" method="post" onsubmit="return sumbit()">	
<div class="wrap" id="wrap">
	<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">信息修改</p>
			</div>
			<!-- 输入框 -->
			<div class="lgD">
				姓名<input type="text" name="name" id="username" value="${currentGm.name}">
			</div>
			
			<div class="lgD">
				电子邮箱<input type="text" name="email" id="email" value="${currentGm.email}">
			</div>
			<div class="lgD">
				输入您的当前密码<input type="text" name="pwd" id="pwd">
			</div>
			<div class="lgD">
				输入您的新密码<input type="text" name="newPwd" id="pwd1">
			<div>
				<input type="submit" class="btns" value="修改">
			</div>
		</div>
</div>
</div>
</form>
</body>
</html>