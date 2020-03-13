<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>地址联动</title>
<style>
select {
width: 100px;
padding: 5px;
font-size:16px;
}
      ul{
		list-style: none;
		padding:0;
		overflow:hidden;
		display:table;
		height:auto;
		margin-top:0px;
		margin-left:25px;;
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
	
	#menu{
		float: left;
		position:relative;
	}
	#xf{
		float: right;
		position:absolute;
		margin-left:30%;
		margin-top:10dp;
	}
</style>
</head>
<body>
<div id="menu">
<form action="<c:url value='/StuServlet?method=fxScore'/>" method="post">
<h1>功能选择</h1>
<select name="KCID">
	<option value="A1100010">形式与政策</option>
	<option value="A1100040">中国近代史纲要</option>
	<option value="A2040010">Web动态网络设计</option>
	<option value="A2040050">计算机网络B/option>
	<option value="A2040080">嵌入式系统设计A</option>
	<option value="A2040291">计算机图形学B</option>
	<option value="A2040501">数据挖掘基础B</option>
</select>

<input type="submit" id="sub" value="查询">
</form>

			<ul>
			<li><a href="<c:url value='main.jsp'/>">返回</a></li>
			</ul>
</div>
<div id="xf">
	<table border="1" width="500" height="100">
		<tr>
			<td>平均成绩</td>
			<td>及格率</td>
		</tr>
	<tr>
			<td>${requestScope.pj }</td>
			<td>${requestScope.jg }</td>
		</tr>
	
	</table> 
	
</div>

</body>
</html>