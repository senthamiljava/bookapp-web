<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body>
	<h3>Book Publishing (PubHub 100)</h3> 
	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null)
			out.println("Message = " + msg);
	%>
	<h3>Login</h3>
	<form action="LoginController" method="post">

		Email Id<input type="email" name="email_id" required autofocus>
		<br /> Password<input type="password" name="user_password" required>
		<br /> <input type="submit" value="Submit">
	</form>
</body>
</html>