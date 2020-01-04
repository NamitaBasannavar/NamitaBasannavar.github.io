<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu item list customer</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>

<body>

	<header> <span id="title"> truYum</span> <img
		src="./images/truyum-logo-light.png" /> <nav>
	<a id="menu" href="ShowMenuItemListCustomer">Menu</a>
	<a id="cart" href="ShowCart">Cart</a></nav> </header>

	<div>
		<h1 class="cont">Menu Items</h1>
		<h4>${msg }</h4>
		<table class="cont">
			<tr>
				<th class="al-left">Name</th>
				<th class="al-mid">Free Delivery</th>
				<th class="al-right">Price</th>
				<th class="al-mid">Category</th>
				<th class="al-mid">Action</th>
			</tr>

			<c:forEach items="${menuItemList}" var="m">
				<tr>
					<td class="al-left">${m.name}</td>
					<td class="al-mid"><c:if test ="${m.freeDelivery}">Yes</c:if>
						<c:if test="${!m.freeDelivery}">No</c:if></td>
					<td class="al-right">Rs.${m.price}</td>
					<td class="al-mid">${m.category}</td>
					<td><a href="AddToCart?menuItemId=${m.id}" >AddtoCart</a></td>
				</tr>
			</c:forEach>


		</table>
	</div>

	<footer> <span id="cpw"> copyright@2019></span></footer>

</body>
</html>
