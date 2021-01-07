<%@page import="com.fuzhu.studentmanager.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="form-area">
	<h3>
		核对修改内容
	</h3>
	<div class="update-form">
		<ul>
			<li><label>删除的学生名字：</label><%=request.getAttribute("deletename")%></li>
			<li><label>修改的学生名字：</label><%=request.getAttribute("updatename")%></li>
			<li><label>修改的学生ID：</label><%=request.getAttribute("insertstudentID")%></li>
			<li><label>修改的学生姓名：</label><%=request.getAttribute("insertstudentName")%></li>
			<li><label>修改的学生电话：</label><%=request.getAttribute("insertstudentPhone")%></li>
			<li><label>用户已注册：</label><%=request.getAttribute("registerName")%></li>
			<li><a href="login.jsp">去登录刚注册的账号</a></li>
		</ul>
	</div>
</div>
</body>
<style>
	body{
		background:skyblue;
		background-size: cover;
	}
	.form-area{
		background-color:#fff;
		width:600px;
		margin:50px auto 0;
		height:522px;
		border: 1px solid #ccc;
	}
	.form-area h3{
		height:42px;
		border-bottom: 1px solid #ccc;
		background-color: #ececec;
		line-height:42px;
		padding: 0 10px;
		margin-block-start: 0;
		fontsize:18px;
		font-weight:normal;
	}
	.update-form ul li{
		margin-bottom:20px;
		list-style:none;
	}
	.update-form ul li label{
		display: inline-block;
		text-align:right;
	}
	a{
		margin:0 3px;
		text-decoration: none;
	}
</style>
</html>