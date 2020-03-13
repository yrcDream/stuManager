<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<h3 align="center">学生列表</h3>
<table border="1" width="70%" align="center">
	<tr>
		<th>学生学号</th>
		<th>学生姓名</th>
		<th>性别</th>
		<th>邮箱</th>
		<th>学院</th>
		<th>形势与政策</th>
		<th>中国近代史纲要</th>
		<th>web动态网页设计</th>
		<th>计算机网络B</th>
		<th>嵌入式系统设计A</th>
		<th>计算机图形学</th>
		<th>数据挖掘B</th>
		<th>操作</th>
	</tr>
<%--
要遍历提PageBean的beanList这个集合
 --%>
<c:forEach items="${pb.beanList}" var="stu">
	<tr>
		<td>${stu.xh }</td>
		<td>${stu.xm }</td>
		<td>${stu.xb}</td>
		<td>${stu.email }</td>
		<td>${stu.major }</td>
		<td>${stu.stuScores.xsScore }</td>
		<td>${stu.jdScore }</td>
		<td>${stu.webScore }</td>
		<td>${stu.jjScore }</td>
		<td>${stu.qrScore }</td>
		<td>${stu.txScore }</td>
		<td>${stu.sjScore }</td>
		<td>
			<a href="<c:url value='/StuServlet?method=preEdit&xh=${stu.xh }'/>">编辑</a>
			<a href="<c:url value='/StuServlet?method=delStu&xh=${stu.xh}'/>">删除</a>
		</td>
	</tr>
</c:forEach>
</table>
<br/>
<%-- 
给出分页相差的链接
 --%>
<center>
第${pb.pcode }页/共${pb.tp }页

<a href="${pb.url }&pc=1">首页</a>
<c:if test="${pb.pcode > 1 }">
<a href="${pb.url }&pc=${pb.pcode-1}">上一页</a>
</c:if>

<%-- 计算begin、end --%>
<c:choose>
	<%-- 如果总页数不足10页，那么把所有的页数都显示出来！ --%>
	<c:when test="${pb.tp <= 10 }">
		<c:set var="begin" value="1" />
		<c:set var="end" value="${pb.tp }" />
	</c:when>
	<c:otherwise>
		<%-- 当总页数>10时，通过公式计算出begin和end --%>
		<c:set var="begin" value="${pb.pcode-5 }" />
		<c:set var="end" value="${pb.pcode+4 }" />	
		<%-- 头溢出 --%>
		<c:if test="${begin < 1 }">
			<c:set var="begin" value="1" />
			<c:set var="end" value="10" />
		</c:if>	
		<%-- 尾溢出 --%>
		<c:if test="${end > pb.tp }">
			<c:set var="begin" value="${pb.tp - 9 }" />
			<c:set var="end" value="${pb.tp }" />
		</c:if>	
	</c:otherwise>
</c:choose>
<%-- 循环遍历页码列表 --%>
<c:forEach var="i" begin="${begin }" end="${end }">
	<c:choose>
		<c:when test="${i eq pb.pcode }">
			[${i }]
		</c:when>
		<c:otherwise>
			<a href="${pb.url }&pc=${i}">[${i }]</a>	
		</c:otherwise>
	</c:choose>
	
</c:forEach>


<c:if test="${pb.pcode < pb.tp }">
<a href="${pb.url }&pc=${pb.pcode+1}">下一页</a>
</c:if>
<a href="${pb.url }&pc=${pb.tp}">尾页</a>
</center>
  </body>
</html>
