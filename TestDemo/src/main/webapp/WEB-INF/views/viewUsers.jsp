<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table1">
		<tr>
			<th>S.no</th>
			<th>Id</th>
			<th>Email</th>
			<th>UserName</th>
			<th>Password</th>
		</tr>
		
		
		<c:forEach items="${userList}" var="user" varStatus="status">
		
			<tr>
				<td>${status.count }</td>
				<td>${user.id }</td>
				<td>${user.userName }</td>
				<td>${user.email }</td>
				<td>${user.password }</td>
				

			</tr>
		
</c:forEach>

	</table>
</body>
</html>