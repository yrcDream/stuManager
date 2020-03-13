<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>高级搜索</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
<style type="text/css">
#qrDiv{
	position:relative;
	margin-left:30%;
}

</style>
	
  </head>
  
  <body>
<h3 align="center">学生查询</h3>
<div id="qrDiv">
<form action="<c:url value='/stu/findStuByQueryInfo.action?pc=1'/>" method="post">
<table border="0" align="center" width="40%" style="margin-left: 100px;">
	<tr>
		<td width="100px">学号:</td>
		<td width="40%">
			<input type="text" name="xh"/>
		</td>
	</tr>
	<tr>
		<td>性别</td>
		<td>
			<select name="xb">
				<option value="">==请选择性别==</option>
				<option value="男">男</option>
				<option value="女">女</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>姓名:</td>
		<td>
			<input type="text" name="xm"/>
		</td>
		<td>
			<label id="cellphoneError" class="error">&nbsp;</label>
		</td>		
	</tr>
	<tr>
		<td>邮箱</td>
		<td>
			<input type="text" name="email"/>
		</td>
		<td>
			<label id="emailError" class="error">&nbsp;</label>
		</td>	
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>
			<input type="submit" value="搜索"/>
			<input type="reset" value="重置"/>
		</td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
</div>
  </body>
</html>
