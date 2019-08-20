<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="default-style" content="width=device-width; charset=ISO-8859-1">
<title>FashionHi5</title> 
<style>
.flip-box {
  background-color: #fff;
  width: 700px;
  height: 200px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #fff;
  color: black;
}

.flip-box-back {
  background-color: #fff;
  color: #333;
  transform: rotateY(180deg);
}
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 70px;
  font-family: 'Lobster', cursive;
  font-size:24px;
  
}

</style>      
</head>

<body>

<section class="container-fluid" style="margin-bottom:50px;">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
           
            <!-- Indicators -->
            
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img" src="resources/images/max-onam-3_.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME   TO   THE  WORLD  OF fASHION</h1>
                              <p>feel free to shop</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img" src="resources/images/slide41.jpg" alt="Second slide" height="100%" width="100%">
                   <div class="container">
                        <div class="carousel-caption">
                              <h1>50% off</h1>
                            <h1>family shopping</h1>                      
                            <p>for your complete family</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img" src="resources/images/11.gif" alt="Third slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p>fashion world!!!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img" src="resources/images/slide6.jpg" alt="forth slide" height="0%" width="100%">
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
</section>


<section class="section-space">
<div class="container">
	<div class="row">
		<div class="col-md-5">
			<a href="#"><img style="height: 500px;" class="img-responsive"  alt="Fashion" src="resources/images/logo.png"></a>
		</div>
		<div class="col-md-7">	
			<h2 class="about_h2" style="font-family: 'Pacifico', cursive;">Fashion<span style="color:#00aeef;">Hi</span>5</h2>
    		<h2 class="about_h2">Feel Free to Shop</h2>
			<div class="home_about">	
				<p>Who we are &nbsp;
FashionHi5 is a young and vibrant company that aims to provide quality products. 
FashionHi5 aims at providing a hassle free and enjoyable shopping experience to shoppers across the country with the widest range of brands and products on its portal.
FashionHi5 brings to you the best that fashion has to offer around the world at a single place.
It believes in doing the best to deliver the best. 
Shopping is easy with us.
And just in case you didn't quite like what you bought, no problem, we'd be happy to take it back with our hassle free Return Policy.
We endeavour to build that same destination in India by giving customers more of what they want vast selection, low prices, fast and reliable delivery, and a trusted and convenient online shopping experience and provide sellers a world-class e-commerce platform.
 And incase you wish to know more, feel free to write to us at FashionHi5@gmail.com.

  &nbsp;
 &nbsp;

Happy Shopping!!</p>
			
				<a class="ghost-color-btn" href="aboutus">Read More<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
			</div>
		</div>
	</div>
</div>
</section>
<div class="row">
<div class="column">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <a><img class="img-responsive"  alt="Fashion" src="resources/images/Vision.png" style="height:250px!important"></a>
    </div>
    <div class="flip-box-back">
      <h2 class="glyphicon glyphicon-eye-open" style="color: #00aeef;"> Vision</h2>
      <h1 style="font-family: 'Pacifico'; font-size:24px;">We continuously innovate to be the best destination</h1>
      <h1 style="font-family: 'Pacifico'; font-size:24px;"> for our customers and partners.</h1>
    </div>
  </div>
</div>
</div>
<div class="column">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
            <a><img class="img-responsive"  alt="Fashion" src="resources/images/Mission.png" style="height:250px!important"></a>
      
    </div>
    <div class="flip-box-back">
      <h2 class="glyphicon glyphicon-screenshot" style="color: #00aeef;"> Mission </h2>
      <p class="glyphicon glyphicon-send"><br>
      <h1 style="font-family: 'Pacifico'; font-size:24px;">We use our technology to bring brands and shoppers closer together,</h1>
      <h1 style="font-family: 'Pacifico'; font-size:24px;"> Making the world feel like a smaller place.</h1>
    </div>
  </div>
</div>
</div>
</div>
<section class="section-space background_bg">
<div class="container">
	<h2 class="product_h2" style="font-family: 'Lobster';">New Arrival</h2>
	<div class="row">
		<div class="col-md-3">
			<a href="http://localhost:8080/project1frontend/all/getproduct/53"><img class="img-responsive"  alt="Fashion" src="resources/images/model4.jpg"></a>
		</div>
		<div class="col-md-3">	
			<a href="http://localhost:8080/project1frontend/all/getproduct/55"><img class="img-responsive"  alt="Fashion" src="resources/images/model3.jpg"></a>			
		</div>
		<div class="col-md-3">	
			<a href="http://localhost:8080/project1frontend/all/getproduct/39"><img class="img-responsive"  alt="Fashion" src="resources/images/model2.jpg"></a>			
		</div>
		<div class="col-md-3">	
			<a href="http://localhost:8080/project1frontend/all/getproduct/56"><img class="img-responsive"  alt="Fashion" src="resources/images/model1.jpg"></a>			
		</div>
	</div>
</div>
</section>
  <div class="footer-area-bottom">
                    <div class="container">
                        <p>© 2019 FashionHi5 All Rights Reserved. &nbsp;</p>
                    </div>
                </div>


</body>
</html>