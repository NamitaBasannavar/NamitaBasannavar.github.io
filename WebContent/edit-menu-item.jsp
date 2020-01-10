<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
<script src="./js/script.js" type="text/javascript"></script>
</head>
<body>
	<header> <span>truYum</span> <img class="img"
		src="./images/truyum-logo-light.png" /> <nav> <a id="menu"
		href="ShowMenuItemListAdmin">Menu</a></nav> </header>
	<div>
		<h1>Edit Menu Item</h1>
		<form class="cont" name="form" method="post"
			action="EditMenuItem?menuItemId=${menuItem.id}"
			onSubmit="return validation()">
			<table>
				<tr>
					<td colspan="4"><label for="txtName">Name</label></td>
				</tr>
				<tr>
					<td colspan="4"><input type="text" id="txtName" name="txtName"
						size="80" value="${menuItem.name}"></td>
				</tr>
				<tr>
					<td><label for="txtPrice">Rs.price</label></td>
					<td>Active</td>
					<td><label for="txtDoB">Date of Launch</label></td>
					<td><label for="Category">Category</label></td>
				</tr>
				<tr>
					<td><input type="textbox" id="txtPrice" name="txtPrice"
						class="txt-right" value="${menuItem.price}"></td>
					<td><label for="rdYes"><input type="radio" id="rdYes"
							name="rdYes" checked>Yes </label> <label for="rdNo"><input
							type="radio" id="rdNo" name="rdYes">No</label></td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${menuItem.dateOfLaunch }" var="dol"></fmt:formatDate> <input
						type="text" id="txtDoL" name="txtDoL" value="${ dol}"/ ></td>
					<td><select name="Category" id="Category">
							<option>Starters</option>
							<option>Main Course</option>
							<option>Dessert</option>
							<option>Drinks</option></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" id="cbDelivery"
						name="cbDelivery" checked>Free Delivery</td>
				</tr>
				<tr>
					<td colspan="2"><input class="color" type="submit"
						value="Save"></td>
				</tr>
			</table>
		</form>
	</div>
	<footer> <span>Copyright@2019<span></footer>
</body>
</html>
