<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增删改学生数据</title>
</head>
<body>
<div class="form-area">
<h3>修改信息</h3>
<form action="DataUpdateServlet" method="post" class="form">
	<ul>
		<li>
			<label>根据姓名删除学生信息：</label><input type="text"  name="delete_name" class="inp"/>
		</li>
		<li style="text-align:center">
			<input type="submit"  value="删除" class="btn"/>
		</li>
	</ul>
</form>
<br>
<br>
<h3>增加学生：</h3>
<form action="DataUpdateServlet" method="post" class="form">
	<br>
	<ul>
		<li>
			<label>ID：</label><input type="text"  name="STID" class="inp"/>
		</li>
		<li>
			<label>姓名：</label><input type="text"  name="STNAME" class="inp"/>
		</li>
		<li>
			<label>性别：</label><input type="text"  name="STSEX" class="inp"/>
		</li>
		<li>
			<label>年龄：</label><input type="text"  name="STAGE" class="inp"/>
		</li>
		<li>
			<label>电话：</label><input type="text"  name="STPHONE" class="inp"/>
		</li>
		<li style="text-align:center">
			<input type="submit"  value="增加" class="btn"/>
		</li>
	</ul>
</form>
<br>
<br>
<h3>更改学生姓名： </h3>
<form action="DataUpdateServlet" method="post" class="form">
			<br>
			<ul>
				<li><label>要更名的学生名字：</label><input type="text"   name="proviousName" class="inp"/></li>
				<li><label>名字更改为：</label><input type="text"  name="nowName" class="inp"/></li>
				<li style="text-align:center">
					<input type="submit"  value="更改" class="btn"/>
				</li>
			</ul>
</form>
</div>
</body>
<style>	
	body{
		background-color:skyblue;
	}
	.form-area{
		background-color:#fff;
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
	.form{
		width:600px;
		margin:50px auto 0;
	}
	.form ul li{
		margin-bottom:20px;
		list-style:none;
	}
	.form ul li label{
		display: inline-block;
		width: 200px;
		text-align:right;
	}
	.form ul li .inp{
		width:242px;
		height:37px;
		border:1px solid #ccc;
	}
	.form ul li .btn{
		border: 1px solid;
		width:100px;
		height:34px;
		background-color:#c81523;
		font-size:14px;
		color:#fff
	}
</style>
</html>