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
		background:url(images/bgc2.jpg) no-repeat center;
		background-size: cover;
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
		background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
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