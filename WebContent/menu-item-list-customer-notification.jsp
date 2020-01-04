<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>customer notification</title>
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
	
	<tr>
	   <h1 class="main">Menu Items</h1>
	   <p class="move">Item added to Cart Successfully </p>
	</tr>
	 
	 <table class="cont">
		<tr>
			<th class="name">Name</th>
			<th class="fd">Free delivery </th>
			<th class="para">Price</th>
			<th class="caption">Category</th>
			<th class="action">Action</th>
		</tr>
	
		<c:forEach items="${menuItemList}" var="m">
				<tr>
					<td class="align-left">${m.name}</td>
					<td class="align-cent">${m.freeDelivery}</td>
					<td class="align-right">Rs.${m.price}</td>
					<td class="align-cent">${m.category}</td>
			        <td><a href="AddToCart?menuItemId=${m.id}"
						target="_blank">Add to Cart</a></td>
				</tr>
			</c:forEach>
				
	</table>
	<footer><span id="cpw">Copyright@2019</footer>
</body>
</html>