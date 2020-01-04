<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Cart empty</title>
	<link rel="stylesheet" type="text/css" href="./style/style.css"/>
</head>
<body>
	<header>
		<span id="title">truYum</span>
		<img src="./images/truyum-logo-light.png"/>
		<nav>
		<a id="menu" href="ShowMenuItemListCustomer">Menu</a>
		<a id="cart" href="ShowCart">Cart</a></nav>
	</header>
	
	<h2 class="cart">Cart</h2>
	<p class="move">Item removed from Cart successfully</p>
	
	<table class="cont">
		<tr>
			<th class="name">Name</th>
			<th class="free">Free Delivery</th>
			<th class="pr">Price</th>
		</tr>
	
		<tr>
			<td  class="name">Sandwich</td>
			<td  class="free">Yes</td>
			<td class="pr">Rs.99.00</td>
			<td><a href="cart.html">Delete</td>
		</tr>
	
		<tr>
			<td  class="name">Burger</td>
			<td  class="free">No</td>
			<td class="pr">Rs.129.00</td>
			<td><a href="cart.jsp">Delete</td>
		</tr>
		
		<tr>
			<td class="name"></td>
			<td class="free">Total</td>
			<td class="pr">Rs.228.00</td>
		</tr>
	</table>
	<footer><span id="cpw">Copyright@2019</footer>
</body>
</html>
		