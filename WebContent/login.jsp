<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"	import="java.util.* " %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<style>
	* {
		margin:0;
		padding:0;
	}
	body{
		background-color:skyblue;
	}
	a {
		text-decoration: none;
	}
	li {
		list-style:none;
	}
	select{
		width:200px;
		margin-bottom:10px
	}
	.form-area{
		margin-top:150px;
	}
	.login-form{		
		background-color: #fff;
		width:600px;
		margin:50px auto 0;
		height:300px;
		border: 1px solid #ccc;
	}
	.login-form h3{
		height:42px;
		border-bottom: 1px solid #ccc;
		background-color: #ececec;
		line-height:42px;
		padding: 0 10px;
		margin-block-start: 0;
		fontsize:18px;
		font-weight:normal;
	}
	.login-form ul{
		margin-top:20px;
	}
	.login-form ul li {
		margin-bottom:20px;
	}
	.login-form ul li label{
		display: inline-block;
		width:88px;
		text-align:right
	}
	.inp{
		width: 200px;
		height:37px;
		border:1px solid #ccc;
	}
	.error{
		color:#c81523;
		margin-bottom: 10px
	}
	.btn{
		border: 1px solid;
		width:100px;
		height:34px;
		background-color:#c81523;
		color:#fff;
		font-size:14px;
	}

	
</style>
</head>
<body>
<div class="form-area">
<div class="login-form">
<h3>用户登陆</h3>
<form action="LoginServlet" method="post" align="center">
<%
				List<String> info = (List<String>)request.getAttribute("info");
				if(info!=null){
					Iterator<String> iter = info.iterator();
					while(iter.hasNext()){
				%>
				<h4 class="error"><%=iter.next() %></h4>
				<%
					}
				}
				%>	
	<ul>
    	<li>
    		<label>用户名：</label><input type="text" name="userid" class="inp"/>
    	</li>
		<li><label>密   码：</label><input type="password" name="userpass" class="inp" /></li>
		<li>
			<input type="submit" value="登陆" class="btn"/>
			<input type="reset" value="重置"class="btn" />
		</li>
    </ul>
    
<div style="width:100%;text-align:center">
<a href="register.jsp"  >注册管理账号</a></div>
</form>
</div>
</div>
</body>
</html>