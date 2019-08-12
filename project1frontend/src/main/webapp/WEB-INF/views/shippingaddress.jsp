<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href='<c:url value="/resources/css/registration.css"></c:url>'>
<link href='https://fonts.googleapis.com/css?family=Cookie' rel='stylesheet'>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#form').validate({
			rules:{
				"apartmentnumber":{required:true},
				"streetname":{required:true},
				"state":{required:true},
				"city":{required:true},
				"country":{required:true},
				"zipcode":{required:true,number:true}
			}
		})
	})
</script>

</head>
<body>
<div class="container">
<c:url var="url" value="/cart/createorder"></c:url>
<form:form modelAttribute="shippingaddress" action="${url }" id="form">

<p align="center">
<b>Shipping Address</b>
</p><br>	
<!--<form:hidden path="id"/>-->

<form:label path="apartmentnumber">Enter Apartmentnumber</form:label><br>
<form:input path="apartmentnumber" id="apartmentnumber"/><br>


<form:label path="streetname">Enter Streetname</form:label><br>
<form:input path="streetname" id="streetname"/><br>


<form:label path="city">Enter city</form:label><br>
<form:input path="city" id="city"/><br>


<form:label path="state">Enter State</form:label><br>
<form:input path="state" id="state"/><br>


<form:label path="country">Enter country</form:label><br>
<form:input path="country" id="country"/><br>


<form:label path="zipcode">Enter zipcode</form:label><br>
<form:input path="zipcode" id="zipcode"/><br>
<br>
<br>
<button type="submit">Next</button>
</form:form>
</div>

</body>
</html>
