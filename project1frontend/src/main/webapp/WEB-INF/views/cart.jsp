<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<div class="container">
<table class="table table-striped">
<thead id="thead">
<tr><th>ProductName</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>
<c:set var="grandTotal" value="0"></c:set>
<tbody id="tbody"><!-- cartItems is List<CartItem>, cartItem is CartItem obj -->
<c:forEach items="${cartItems }" var="cartItem">
<tr>
<td>${cartItem.product.productname }</td>
<td class="col-sm-1 col-md-1" style="text-align:center"><input type="text" class="form-control" id="quantity" value="${cartItem.quantity }"></td>
<td>${cartItem.totalPrice }</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>

<td><a href="<c:url value='/cart/removecartitem/${cartItem.cartItemId }'></c:url>" class="label label-danger pull-left" >
<span class="glyphicon glyphicon-remove" ></span>Remove
</a>
<!-- <a href="<c:url value='/all/getproduct/{id}'></c:url>" class="label label-primary pull-left">
<span class="glyphicon glyphicon-update" ></span>Update -->
</a>
</td>

</tr>
</c:forEach>
</tbody>
</table>
Total Price : ${grandTotal }
<c:if test="${empty(cartItems) }">
<h3>Your Cart is Empty</h3>
</c:if>

<c:if test="${ !empty(cartItems) }">
<a href="<c:url value='/cart/shippingaddress'></c:url>" class="btn btn-success pull-right" style="
    margin-right: 20px;">
<span class="glyphicon glyphicon-shopping-cart"></span> CheckOut </a>
</c:if>

<c:if test="${ !empty(cartItems) }">
<a href="<c:url value='/cart/clearcart'></c:url>" class="btn btn-danger pull-right" style="
    margin-right: 20px;">
<span class="glyphicon glypicon-remove"></span>ClearCart </a>
</c:if>

<a href="<c:url value='/all/getallproducts'></c:url>" class="btn btn-success pull-left" style="
    margin-right: 20px;">
<span class="glyphicon glyphicon-shopping-cart"></span> ContinueShopping  </a>
</div>

</body>

</html>

