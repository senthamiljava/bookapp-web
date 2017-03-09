<html>
<body>
	<h2>Book Management System</h2>

	<%
		String msg = request.getParameter("msg");
		if (msg != null) 
			out.println("Message = " + msg);
	%>
	<a href="Register.jsp">Register</a>
	<br>

	<a href="Login.jsp">Sign In</a>


</body>
</html>
