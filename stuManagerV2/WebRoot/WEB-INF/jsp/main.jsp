<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Mainpage</title>
	
<style type="text/css">
	* {
margin:0;
padding:0;
}   
body{background:url(/stuManager/jsp/img/background2.jpg) top left;
background-size:100%;}
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

</style>
</head>
<body>
<div class="wrap" id="left" align="center">
<h1>管理员功能</h1>
</div>
	<ul>
		<li><a href="<c:url value='/gm//goModifyGUI.action'/>">信息修改</a></li>
		<li><a href="<c:url value='/stu/goQueryUI.action'/>">成绩查询</a></li>
		<li><a href="<c:url value='/jsp/add.jsp'/>">成绩管理</a></li>
		<li><a href="<c:url value='/jsp/analysis.jsp'/>">成绩分析</a></li>
	</ul>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h4>学号：${gm.username}</h4>
	<br>
	<br>
	<h4>姓名：${gm.name}</h4>
	<br>
	<br>
	<h4>性别：${gm.sex}</h4>
	<br>
	<br>
	<h4>电子邮箱：${gm.email}</h4>
	<br>
	<br>
	<h4>专业：${gm.profe}</h4>
</body>
</html>