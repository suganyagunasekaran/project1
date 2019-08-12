<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FashionHi5</title>
<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Cookie' rel='stylesheet'>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>

<script type="text/javascript">

function fillShippingAddress(form){
	if(form.shippingaddressform.checked==true){
		//shippingaddress is same as billingaddress
		form["shippingaddress.apartmentnumber"].value=form["billingaddress.apartmentnumber"].value;
		form["shippingaddress.streetname"].value=form["billingaddress.streetname"].value;
		form["shippingaddress.city"].value=form["billingaddress.city"].value;
		form["shippingaddress.state"].value=form["billingaddress.state"].value;
		form["shippingaddress.country"].value=form["billingaddress.country"].value;
		form["shippingaddress.zipcode"].value=form["billingaddress.zipcode"].value;
	}
	if(form.shippingaddressform.checked==false){
		form["shippingaddress.apartmentnumber"].value=""
		form["shippingaddress.streetname"].value=""
		form["shippingaddress.city"].value=""
		form["shippingaddress.state"].value=""
		form["shippingaddress.country"].value=""
		form["shippingaddress.zipcode"].value=""
	}
	
}

$(document).ready(function(){
	$('#form').validate({
		rules:{

			"billingaddress.apartmentnumber":{required:true},
			"billingaddress.streetname":{required:true},
			"billingaddress.state":{required:true},
			"billingaddress.city":{required:true},
			"billingaddress.country":{required:true},
			"billingaddress.zipcode":{required:true,number:true}
		}
	})
})
</script>
</head>
<body>
<c:url value="/all/shipping" var="url"></c:url>

<form:form action="${url }">
<form:hidden path="id"/>

Check this if shipping address is same as billing address
		<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
		
<div class="row">
<div class="column">
<b>Billing address:</b><br>
<br>
<form:label path="billingaddress.apartmentnumber">Apartment No</form:label>
<form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber"/>

<form:label path="billingaddress.streetname">Streetname</form:label>
<form:input path="billingaddress.streetname" id="billingaddress.streetname"/>

<form:label path="billingaddress.city">City</form:label>
<form:input path="billingaddress.city" id="billingaddress.city"/>

<form:label path="billingaddress.state">State</form:label>
<form:input path="billingaddress.state" id="billingaddress.state"/>

<form:label path="billingaddress.country">Country</form:label>
<form:input path="billingaddress.country" id="billingaddress.country"/>

<form:label path="billingaddress.zipcode">Zipcode</form:label>
<form:input path="billingaddress.zipcode" id="billingaddress.zipcode"/>

</div>
<div class="column">
<b>Shipping address:</b><br>

<br>
<form:label path="shippingaddress.apartmentnumber">Apartment No</form:label>
<form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber"/>

<form:label path="shippingaddress.streetname">Streetname</form:label>
<form:input path="shippingaddress.streetname" id="shippingaddress.streetname"/>

<form:label path="shippingaddress.city">City</form:label>
<form:input path="shippingaddress.city" id="shippingaddress.city"/>

<form:label path="shippingaddress.state">State</form:label>
<form:input path="shippingaddress.state" id="shippingaddress.state"/>

<form:label path="shippingaddress.country">Country</form:label>
<form:input path="shippingaddress.country" id="shippingaddress.country"/>

<form:label path="shippingaddress.zipcode">Zipcode </form:label>
<form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode"/>
</div>
</div>
<input type="submit" value="Register" style="background-color:#000060;">
</form:form>
</body>
</html>