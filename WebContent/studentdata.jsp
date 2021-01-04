<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.* "%>
<%@page import="com.fuzhu.studentmanager.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息</title>
</head>
<body>
<div class="form-area">
	<h3>信息查询</h3>
	<%
		List<String> info = (List<String>) request.getAttribute("info");
		if (info != null) {
			Iterator<String> iter = info.iterator();
			while (iter.hasNext()) {
	%>
	<h4 align="center"><%=iter.next()%></h4>
	<%
		}
		}
	%>
	<div class="data-form">
		<form action="StudentInformation" method="post">
			<label>根据姓名查询学生信息：</label>
			<input type="text" name="name" class="inp"/>
			<input type="submit" value="查询" class="btn"/>
		</form>
	</div>
	<div class="link">
		<a href="dataupdate.jsp">去增删改学生信息 </a> | 
		<a href="SearchAllServlet">查询所有学生信息</a>
	</div>

	<%
		List<Student> listAll = (List<Student>) request.getAttribute("list");
		if (listAll != null) {
			%>
			<table border="1">
	<thead>
	<tr>
		<th>ID</th>
		<th>姓名</th>
		<th>性别</th>
		<th>年龄</th>
		<th>电话</th>
	</tr>
	</thead>
			<%
			Iterator<Student> iterAll = listAll.iterator();
			while (iterAll.hasNext()) {
	%>
	
		
		<%
			Student student = (Student) iterAll.next();
		%>
		<tr>
			<td><%=student.getSTID() %></td>
			<td><%=student.getSTNAME() %></td>
			<td><%=student.getSTSEX() %></td>
			<td><%=student.getSTAGE() %></td>
			<td><%=student.getSTPHONE() %></td>
		</tr>
	

	<%
		}
	 %>
	 
</table>
	 <%
		}
	%>
</div>
</body>
<style>	
	body{
		background:url(images/bgc2.jpg) no-repeat center;
		background-size: cover;
	}
	.form-area{
		background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
		width:600px;
		margin:50px auto 0;
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
	.data-form{
		width:600px;
		margin:50px auto 0;
	}
	.data-form label{
		display: inline-block;
		text-align:right;
	}
	.data-form .inp{
		width:242px;
		height:37px;
		border:1px solid #ccc;
	}
	.btn{
		border: 1px solid;
		-webkit-border-radius: 15px;
		-moz-border-radius: 15px;
		/* Old Firefox */
		border-radius: 15px;
		-webkit-transition: all 0.15s ease;
		-moz-transition: all 0.15s ease;
		-o-transition: all 0.15s ease;
		-ms-transition: all 0.15s ease;
		transition: all 0.15s ease;	
		width:100px;
		height:34px;
		background-image: linear-gradient(to top, #37ecba 0%, #72afd3 100%);
		font-size:14px;
		color:#fff
	}
	.link{
		margin-bottom:15px;
		padding-top:20px;
		text-align:center;
	}
	.link a{
		margin:0 3px;
		text-decoration: none;
	}
	 table
        {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }
        table td, table th
        {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }
        table thead th
        {
            background-color: #CCE8EB;
            width: 100px;
        }
        table tr:nth-child(odd)
        {
            background: #fff;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }
	
</style>
</html>