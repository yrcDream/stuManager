<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>编辑页面</title>
</head>
<style type="text/css">

h1{
	position:relative;
	margin-left:41%;
	
}
#eiDiv{
	position:relative;
	margin-top:20px;
	margin-left:33%;
}
</style>
<body>
<h1>学生信息编辑</h1>
<div id="eiDiv">

<form action="<c:url value='/StuServlet?method=edit'/>" method="post">
	<table>
	<tr>
		<td align="right">学号:</td>
		<td><input type="text" name="xh" id="xh" value="${requestScope.stu. getXh() }"/></td>
		<td><label class="error" id="xhErr"></label></td>
	</tr>
	<tr>
		<td align="right">学生姓名:</td>
		<td><input type="text" name="xm" id="xm" value="${requestScope.stu. getXm() }"/></td>
		<td><label class="error" id="xmErr"></label></td>
	</tr>
	<tr>
		<td align="right">性别:</td>
		<td><input type="text" name="xb" id="xb" value="${requestScope.stu. getXb() }"/></td>
		<td><label class="error" id="xbErr"></label></td>
	</tr>
	<tr>
		<td align="right">邮箱:</td>
		<td><input type="text" name="email" id="mail" value="${requestScope.stu. getEmail() }"/></td>
		<td><label class="error" id="mailErr"></label></td>
	</tr>
	<tr>
		<td align="right">学院:</td>
		<td><input type="text" name="major" id="major" value="${requestScope.stu.getMajor() }"/></td>
		<td><label class="error" id="majorErr"></label></td>
	</tr>
	<tr>
		<td align="right">形势与政策分数:</td>
		<td><input type="text" name="xsScore" id="xsScore" value="${requestScope.stu.getXsScore() }"/></td>
		<td><label class="error" id="xsErr"></label></td>
	</tr>
	<tr>
		<td align="right">学中国近代史纲要</td>
		<td><input type="text" name="jdScore" id="jdScore" value="${requestScope.stu.getJdScore() }"/></td>
		<td><label class="error" id="jdErr"></label></td>
	</tr>
	<tr>
		<td align="right">web动态网页设计:</td>
		<td><input type="text" name="webScore" id="webScore" value="${requestScope.stu.getWebScore() }"/></td>
		<td><table class="error" id="weErr"></table></td>
	</tr>
	<tr>
		<td align="right">计算机网络B:</td>
		<td><input type="text" name="jjScore" id="jjScore" value="${requestScope.stu.getJjScore() }"/></td>
		<td><label class="error" id="jjErr"></label></td>
	</tr>
	<tr>
		<td align="right">嵌入式系统设计A:</td>
		<td><input type="text" name="qrScore" id="qrScore"value="${requestScope.stu.getQrScore() }"/></td>
		<td><label class="error" id="qrErr"></label></td>
	</tr>
	<tr>
		<td align="right">计算机图形学:</td>
		<td><input type="text" name="txScore" id="txScore" value="${requestScope.stu.getTxScore() }"/></td>
		<td><label class="error" id="txErr"></label></td>
	</tr>
	<tr>
		<td align="right">数据挖掘B:</td>
		<td><input type="text" name="sjScore" id="sjScore" value="${requestScope.stu.getSjScore() }"/></td>
		<td><label class="error" id="sjErr"></label></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value = "提交修改" /></td>
		<td><input type="reset" value = "清空"/> </td>
	</tr>
	</table>
</form>
</div>

</body>
</html>