<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<h3 class="option">No items in cart.Use 'Add to Cart'option in <a href="ShowMenuItemListCustomer">Menu Item List</h3>
	
	<footer><span id="cpw">Copyright@2019</footer>
</body>
		
</html>
