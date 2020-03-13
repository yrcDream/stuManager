<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<!--<link rel="stylesheet" type="text/css" href="#">-->
	<!--<script type="text/javascript" src="#">-->
</head>
<body>
	<h1>hello ，杨润春</h1><br/>
	<a  href="<c:url value='/gm/demo.action'/>">点击测试1</a>
	<a href="<c:url value='/gm/findGmByGid.action?gid=1'/>">点击测试2</a>
	
</body>
</html>