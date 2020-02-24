<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录页面</title>
</head>
<body>
<h1>用户登录</h1>
<hr>
<%
      String username="";
   String password="";
   Cookie[] cookies=request.getCookies();
	 if(cookies!=null&&cookies.length>0)
	 {
		 for(Cookie c:cookies)
		 {
			 if(c.getName().equals("username"))
			 {
				 username=c.getValue();
			 }
			 if(c.getName().equals("password"))
			 {
				 password=c.getValue();
			 }
		 }
	 }
   %>
<form name="loginForm" action="dologin.jsp" method="post">
<table>
<tr>
  <td>用户名：</td>
  <td><input type="text" name="username" value="<%=username%>"></td>
</tr>
<tr>
  <td>密码：</td>
  <td><input type="password" name="password" value="<%=password%>"></td>
</tr>
<tr>
  <td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked">十天内记住我的登录状态</td>
</tr>
<tr>
  <td colspan="2" align="center"><input type="submit" value="登录">&nbsp;&nbsp;<input type="reset" value="取消"></td>
</tr>
</table>
</form>
</body>
</html>