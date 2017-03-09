<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration here</title>
</head>
<body>
	<h3>Book Publishing (PubHub 100)</h3>


	<h3>New User Registration</h3>
	<form action="RegisterController" method="post">

		Name (*): <input type="text" name="name" required autofocus /> <br />

		Username(*) : <input type="email" name="email_id" required> <br />

		Password(*) : <input type="password" name="user_password" required> <br/>
		
		MobileNo : <input type="number" name="mobileno" required> <br/>
		<br/>
		<br /> <input type="submit" value="Submit">
	</form>
</body>
</html>