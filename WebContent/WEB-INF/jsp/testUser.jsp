<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
</head>
<body>
	<form action="<c:url value="checkLogin"></c:url>" method="post">
		<input type="hidden" name="requestFlag" value="login" /> 
		username:<input type="text" name="username" /><br /> 
		password:<input type="password" name="password" /><br /> 
		<input type="submit" value="login" />
	</form>
	<form action="<c:url value="register"></c:url>" method="post">
		<input type="hidden" name="requestFlag" value="login" /> 
		username:<input type="text" name="username" /><br /> 
		password:<input type="password" name="password" /><br /> 
		<input type="submit" value="register" />
	</form>
	
	<%
                  out.println(path);
	              out.println(basePath);
    %>

</body>
</html>