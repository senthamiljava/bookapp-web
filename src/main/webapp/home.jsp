<%@page import="com.senthamil.bookapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
</head>
<body>

	<h3>Home Page</h3>

	<%
		User loggedInUser = (User) session.getAttribute("LOGGED_IN_USER");
		out.println("Welcome " + loggedInUser.getName());
	%>
	<h3>List of Products</h3>

	<form action="OrderController" method="post">

		Select the product : <select name="product_name">
			<option>Samsung S7</option>
			<option>IPHONE 5s</option>
		</select> <br /> Quantity : <input type="number" name="product_quantity" required
			min="1" max="3" /> <br />

		<button type="submit">Place an Order</button>

		</select>

	</form>

	<a href="LogoutController"> Logout</a>


	<h3>My Orders</h3>
	<table border="1">
		<thead>
			<tr>
				<th>OrderId</th>
				<th>Product Name</th>
				<th>Quantity</th>
				<th>Ordered Date</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Samsung</td>
				<td>2</td>
				<td>2017-03-01</td>
				<th>ORDERED</th>
				<th><a href="">Cancel</a>
			</tr>
			<tr>
				<td>2</td>
				<td>Iphone</td>
				<td>2</td>
				<td>2017-03-11</td>
				<th>ORDERED</th>
			</tr>
		</tbody>
	</table>
</body>
</html>