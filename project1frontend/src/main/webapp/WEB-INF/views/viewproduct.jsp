<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet">
<title>FashionHi5</title>
<style>
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 10px;
  font-family: 'Lobster', cursive;
  font-size:24px;
  
}

</style>
</head>
<body>
	<div>
		<div class="panel-info">
			<div class="panel panel-heading">Product Details</div>
			<div class="panel panel-body">
			<c:url value="/cart/addtocart/${productObj.id}" var="url"></c:url>
			
			<form action="${url }">
			
			<div class="row">
			<div class="column">
			
			<img height="585px" width="480px" src="<c:url value='/resources/images/${productObj.id}.jpg'></c:url>"style="margin-left: 20px;">
			
			</div>
			
		
			<div class="column" >
			<b>Product Name:</b>${productObj.productname }<br><br>
			<b>Product Desc:</b>${productObj.productdesc }<br><br>
			<b>Price: </b>Rs. ${productObj.price }<br><br>
			<b>Quantity:</b>${productObj.quantity }<br><br>
			<b>Category:</b>${productObj.category.categoryname}<br><br>
		
						<c:if test="${productObj.quantity==0 }">
			<button class="btn btn-primary btn-lg" disabled>Out Of Stock</button><br>
			</c:if>
			<c:if test="${productObj.quantity>0 }">
			<security:authorize access="hasRole('ROLE_USER')">
			<b>Enter Quantity:</b><input type="number" min="1" max="${productObj.quantity }" name="requestedQuantity"><br>
			<br><br>
			<button class="btn btn-primary btn-lg" type="submit"><span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</button>
			</security:authorize>
			</c:if>
			<a href="<c:url value='/all/getallproducts'></c:url>" class="btn btn-success btn-lg"> View other products</a>
			</div>
			</div>
			</form>
			</div>
		</div>
	
	</div>
	 <div class="footer-area-bottom">
                    <div class="container">
                        <p>© 2019 FashionHi5 All Rights Reserved. &nbsp;</p>
                    </div>
                </div>
</body>
</html>
