<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="jquery/jquery-1.8.2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="list" method="post">
		名称:<input type="text" name="name" value="${movie.name }">
		价格:<input type="text" name="p1" value="${movie.p1 }">--<input type="text" name="p2" value="${movie.p2 }">
		日期:<input type="date" name="time1" value="${movie.time1 }">--<input type="date" name="time2" value="${movie.time2 }">
			<input type="submit" value="提交">
	<table>
		<tr>
			<td>编号</td>
			<td>名称</td>
			<td>上架时间</td>
			<td>时长</td>
			<td>价格</td>
		</tr>
		<c:forEach items="${page.list }" var="l">
			<tr>
				<td>${l.mid }</td>
				<td>${l.name }</td>
				<td>${l.uptime }</td>
				<td>${l.longtime }</td>
				<td>${l.price }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="100">
				<button name="pageNum" value="1">首页</button>
				<button name="pageNum" value="${page.prePage==0?1:page.prePage }">上一页</button>
				<button name="pageNum" value="${page.nextPage==0?page.pages:page.nextPage }">下一页</button>
				<button name="pageNum" value="${page.pages }">尾页</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>