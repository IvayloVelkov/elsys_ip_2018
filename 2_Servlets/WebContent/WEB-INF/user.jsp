<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Info</title>
</head>
<body>
	<table style="width: 50%">
		<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Email</th>
		</tr>
		
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.email}</td>
		</tr>
	</table>
	<br><br>
	<form action="user" method="POST">
			<input type="hidden" name="oldName" value="${user.name}">
			New Name: <input type="text" name="newName" /><br>
			New Mail: <input type="text" name="newMail" />
			<input type="submit" value="Update User"/>
	</form>
</body>
</html>