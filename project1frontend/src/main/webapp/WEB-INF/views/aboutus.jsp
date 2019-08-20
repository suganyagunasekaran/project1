<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>FashionHi5</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

  <style>
  
.c-no{height:150px;}
.grey-bg{background:#ebebeb;}
.counter-Txt{text-align:center; font-size:20px; font-weight:bold; text-transform:uppercase; margin-top:20px;}
.counter-Txt span
{
display:block; font-size:36px
}
@media(min-width:320px) and (max-width:767px){ 
.c-no{height:100%;}
.counter-Txt{margin-top:35px;}
.margin-bot-35{margin-bottom:35px;}
}
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
  padding-top:20px!important;
  font-family: 'Lobster', cursive;
  font-size:24px;
}

  .jumbotron {
    background-color: #00aeef;
    color: #fff;
    padding: 100px 25px;
    font-family: 'Pacifico', cursive;
    background: url(https://www.designyourway.net/blog/wp-content/uploads/2018/09/blue-background-pattern-1-700x438.jpg);
  }
  .row {
    margin-right: 15px;
    margin-left: 15px;
}
 .row {
    margin-top: 25px;
    margin-bottom: 25px;
}
  .container-fluid {
    padding: 0px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #00aeef;
    font-size: 50px;
  }
  .logo {
    color: #00aeef;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
   background-image: none;
   color: #00aeef;
  }
  .carousel-indicators li {
    border-color: #00aeef;
  }
  .carousel-indicators li.active {
    background-color: #00aeef;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #00aeef;
    background-color: #fff !important;
    color: #00aeef;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #00aeef !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: black !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #333;
    font-size: 14px;
  }
  
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #00aeef;
    color: #fff;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  </style>
</head>
<body>

<script type="text/javascript">


var a = 0;
$(window).scroll(function() {

  var oTop = $('#counter').offset().top - window.innerHeight;
  if (a == 0 && $(window).scrollTop() > oTop) {
    $('.counter-value').each(function() {
      var $this = $(this),
        countTo = $this.attr('data-count');
      $({
        countNum: $this.text()
      }).animate({
          countNum: countTo
        },

        {

          duration: 7000,
          easing: 'swing',
          step: function() {
            $this.text(Math.floor(this.countNum));
          },
          complete: function() {
            $this.text(this.countNum);
            //alert('finished');
          }

        });
    });
    a = 1;
  }

});
</script>
<div class="jumbotron text-center">
  <h1>FashionHi5</h1> 
</div>

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



<div class="number_counter_bg container-fluid">
	<div class="container">
    	<div class="row" id="counter">
        	<div class="col-sm-4 counter-Txt"><span><i class="glyphicon glyphicon-heart-empty"></i></span>Customers <span class="counter-value" data-count="11930">0</span></div>
            <div class="col-sm-4 counter-Txt"><span><i class="glyphicon glyphicon-shopping-cart"></i></span> Product <span class="counter-value" data-count="754">0</span></div>
            <div class="col-sm-4 counter-Txt margin-bot-35"><span><i class="glyphicon glyphicon-user"></i></span>Team <span class="counter-value" data-count="1682">0</span></div>
        </div>
    </div>
</div>

<section class="section-space background_bg">
<div class="container">

	<div class="row">
		<div class="col-md-3">
			<a href="http://localhost:8080/project1frontend/all/getproduct/40"><img class="img-responsive"  alt="Fashion" src="resources/images/model6.jpg"></a>
		</div>
		<div class="col-md-3">
					<a href="http://localhost:8080/project1frontend/all/getproduct/34"><img class="img-responsive"  alt="Fashion" src="resources/images/wed.jpg"></a>			
			
		</div>
		<div class="col-md-3">	
			<a href="http://localhost:8080/project1frontend/all/getproduct/49"><img class="img-responsive"  alt="Fashion" src="resources/images/IMG_20171007_212153.jpg"></a>			
		</div>
		<div class="col-md-3">	
					<a href="http://localhost:8080/project1frontend/all/getproduct/54"><img class="img-responsive"  alt="Fashion" src="resources/images/model5.jpg"></a>			
		
		</div>
	</div>
</div>
</section>

  <center><h2 style="color:#00aeef;">Client Reviews</h2>
 <!--  <img class="img-responsive" alt="client" src="resources/images/testimonial1.png"> -->
  </center>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner container" role="listbox">
    
      <div class="item active">
      		    <center><img class="img-responsive" alt="client" src="resources/images/testimonial1.png">  </center>       
      		<h3>Mahalakshmi<small> Malaysia, Selangor</small></h3><small><i>Posted on February 19, 2016</i></small>
      		  
        <h4 style="margin-top: 20px;">"The best onlineshopping website. I am so excited!!!"</h4>
      </div>
      <div class="item">
      		    <center><img class="img-responsive" alt="client" src="resources/images/testimonial1.png">  </center>     
       <h3>GunaSekaran <small>India, Chennai</small></h3><small><i>Posted on June 12, 2018</i></small>
       <h4 style=" margin-top: 20px;"> "In One Word... WOW!!"</h4>
      </div>
      <div class="item">
      		    <center><img class="img-responsive" alt="client" src="resources/images/testimonial1.png">  </center>     
            <h3>Suganya <small>Sri Lanka, Colombo</small></h3><small><i>Posted on May 06, 2019</i></small>
        <h4 style=" margin-top: 20px;">"Could I... BE any more happy with this Website?"</h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<footer>
                <div class="footer-area-top section-space">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="footer-box">
                                    <h3 class="title-bar-footer"><b style="font-family: 'Pacifico', cursive;">Contact</b></h3>
                                    <div class="footer-about">
                                    <div class="col-sm-6">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker" style="text-align:right"></span> Chennai, India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 9876543210</p>
      <p><span class="glyphicon glyphicon-envelope"></span> FashionHi5@gmail.com</p>
           
     
                                   <p> <ul class="footer-social">
                                        <li><a href="#"><i class=" glyphicon glyphicon-earphone" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class=" glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class=" glyphicon glyphicon-phone" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class=" glyphicon glyphicon-map-marker" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class=" glyphicon glyphicon-phone-alt" aria-hidden="true"></i></a></li>
                                    </ul>
                                    </p>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
</footer>


 <div class="footer-area-bottom">
                    <div class="container">
                        <p>© 2019 FashionHi5 All Rights Reserved. &nbsp;</p>
                    </div>
                </div>
           
</body>
</html>

