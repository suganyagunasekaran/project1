<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="default-style" content="width=device-width; charset=ISO-8859-1">
<title>FashionHi5</title>
</head>
<body>
<div class="container" >
<div id="myCarousel" class="carousel slide" data-ride="carousel">
           
            <!-- Indicators -->
            
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox" contenttype="width=device-width">
                <div class="item active">
                    <img class="img" src="resources/images/women-shopping.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Welcome To The World Of Fashion</h1>
                              <p>feel free to shop</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img" src="resources/images/slide2.jpg" alt="Second slide" height="100%" width="100%">
                   <div class="container">
                        <div class="carousel-caption">
                              <h1>75% off</h1>
                            <h1>family shopping</h1>                      
                            <p>for your complete family</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img" src="resources/images/slide5.jpg" alt="Third slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>latest trends </h1>
                            <p>fashion world!!!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img" src="resources/images/slide6.jpg" alt="forth slide" height="100%" width="100%">
                  <div class="cointainer">
                        <div class="carousel-caption">
                            <h1>MORE U LOVE MORE U CAN BUY</h1>
                            <p>online shopping can make your life more easier!!</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
</div>
</body>
</html>