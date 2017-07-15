<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  action="afterEditUser" method="post" >
									<div class="form-group">
									<label>user ID</label>
										<input type="text" name="id" id="confirm-password" tabindex="2" class="form-control" value="${user.id}" readonly="true">
									</div>
									<div class="form-group">
										<label>user Name</label>
										<input type="text" name="userName" id="username" tabindex="1" class="form-control" value="${user.userName}">
									</div>
									<div class="form-group">
										<label>Email</label>
										<input type="email" name="email" id="email" tabindex="1" class="form-control" value="${user.email}">
									</div>
									<div class="form-group">
										<label>password</label>
										<input type="password" name="password" id="password" tabindex="2" class="form-control" value="${user.password}">
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
</body>
</html>