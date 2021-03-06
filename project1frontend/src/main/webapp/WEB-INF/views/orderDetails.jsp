<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FashionHi5</title>
</head>
<body>
<div>
    <div style="margin-top: 25px;" >
            <div class="row">

<c:url var="url" value="/cart/createorder"></c:url>
                             <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div >
                            <h1 align="center">Confirm Order</h1>
                       </div>
                        ORDER ID: ${customerorder.orderId }
                  <hr>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br/>
                                        ${customerorder.user.customer.shippingaddress.apartmentnumber },
                                   ${customerorder.user.customer.shippingaddress.streetname }
                                <br/>
                                    ${customerorder.user.customer.shippingaddress.state},
                                     ${customerorder.user.customer.shippingaddress.city}
                                <br/>
                                   ${customerorder.user.customer.shippingaddress.zipcode}
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: ${customerorder.purchaseDate }</p>
                            </div>
                        </div>
                       <hr>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br/>
                                        ${customerorder.user.customer.billingaddress.apartmentnumber},
                                        ${customerorder.user.customer.billingaddress.streetname}
                                    <br/>
                                        ${customerorder.user.customer.billingaddress.city}, ${customerorder.user.customer.billingaddress.state}
                                    <br/>
                                        ${customerorder.user.customer.billingaddress.zipcode}
                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover" border="1">
                                <thead>
                                    <tr>
                                        <td>Image</td>
                                        <td>Product</td>
                                        <td>Units</td>
                                        <td class="text-center">Price</td>
                                        <td class="text-center">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                              
                                <c:forEach var="cartItem" items="${cartItems}">
                                    <tr>
                            <c:url value="/resources/images/${cartItem.product.id }.jpg" var="imgUrl"></c:url>
                                        <td><img src="${imgUrl }" height="50px" width="50px">  </td>
                                        <td class="col-md-9"><em>${cartItem.product.productname}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                       
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>Rs. ${customerorder.grandTotal }</strong></h4>
                                    </td>
                                </tr>
                                <tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="<c:url value='/cart/payment'/>" class="btn btn-default">Payment<span class="glyphicon glyphicon-play"></span></a></td>
</tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </div>
        </div>
       </div>
</body>
</html>   
                            