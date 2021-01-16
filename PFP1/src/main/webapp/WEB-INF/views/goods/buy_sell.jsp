<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
   <meta charset="UTF-8">
   <title>Puzzle | Product Details</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- Fav Icon -->
   <link id="favicon" rel="icon" type="image/png" href="<%=request.getContextPath() %>/resources/img/puzzle.ico" />
   <!-- Google Font Raleway -->
   <link href='https://fonts.googleapis.com/css?family=Raleway:200,300,500,400,600,700,800' rel='stylesheet' type='text/css'>
   <!-- Google Font Dancing Script -->
   <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" />
   <!-- Font Awesome CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/font-awesome.min.css" />
   <!-- Owl Carousel CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css" />
   <!-- Animate CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/animate.min.css" />
   <!-- simpleLens CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/jquery.simpleLens.css" />
   <!-- Price Slider CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/jquery-price-slider.css" />
   <!-- MeanMenu CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/meanmenu.min.css" />
   <!-- Magnific Popup CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/magnific-popup.css" />
   <!-- Nivo Slider CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/nivo-slider.css" />
   <!-- Stylesheet CSS -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/style.css" />
   <!-- Responsive Stylesheet -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/responsive.css" />
   <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="page-title fix"><!--Start Title-->
	<div class="overlay section">
		<h2>입찰</h2>
	</div>
</div><!--End Title-->
<section class="checkout-page page fix"><!--Start Checkout Area-->
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="panel-group" id="checkout-progress">
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="active" data-toggle="collapse" data-parent="#checkout-progress" href="#checkout-method"><span>1</span>CHECKOUT METHOD</a>
						</div>
						<div id="checkout-method" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="col-sm-6">
									<div class="checkout-method checkout-reg fix">
										<h2>CHECKOUT AS A GUEST OR REGISTER</h2>
										<input type="radio" />
										<p>Checkout as Guest</p>
										<input type="radio" />
										<p>Register</p>
										<h3>REGISTER AND SAVE TIME!</h3>
										<ul>
											<li>Fast and easy checkout</li>
											<li>Easy access to your order history and status</li>
										</ul>
										<a href="#">CONTINUE</a>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="checkout-method  checkout-login">
										<h2>login</h2>
										<h3>Already registered?</h3>
										<h4>Please login below</h4>
										<label>E-mail address*</label>
										<input type="email" />
										<br />
										<label>Password*</label>
										<input type="password" />
										<a href="#">login</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#bill-info"><span>2</span>BILLING INFORMATION</a>
						</div>
						<div id="bill-info" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="bill-info">
									<div class="group">
										<input type="text" placeholder="First Name*" class="half">
										<input type="text" placeholder="Last Name*" class="half">
									</div>
									<input type="text" placeholder="COMPANY NAME (OPTIONAL)">
									<input type="text" placeholder="STREET ADDRESS*">
									<input type="text" placeholder="city">
									<div class="group">
										<input type="text" placeholder="POSTCODE / ZIP*" class="third">
										<input type="text" placeholder="STATE / COUNTRY" class="onethird">
									</div>
									<div class="group">
										<input type="text" placeholder="E-mail Address*" class="half">
										<input type="text" placeholder="PHONE NUMBER*" class="half">
									</div>
									<input type="checkbox" class="check">
									<p>Check this if the billing address is the same as Shipping address</p>
									<a href="#">CONTINUE</a>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#shipping-info"><span>3</span>SHIPPING INFORMATION</a>
						</div>
						<div id="shipping-info" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco aboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepte.</p>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#shipping-method"><span>4</span>SHIPPING METHOD</a>
						</div>
						<div id="shipping-method" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco aboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepte.</p>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#payment-met"><span>5</span>PAYMENT INFORMATION</a>
						</div>
						<div id="payment-met" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="payment-met">
									<p>Choose your payment method :</p>
									<ul>
										<li><a href="#"><img src="img/footer/paypal.jpg" alt="" /></a></li>
										<li><a href="#"><img src="img/footer/visa.jpg" alt="" /></a></li>
										<li><a href="#"><img src="img/footer/master.jpg" alt="" /></a></li>
										<li><a href="#"><img src="img/footer/cards.jpg" alt="" /></a></li>
										<li><a href="#"><img src="img/footer/discover.jpg" alt="" /></a></li>
									</ul>
									<div class="pay">
										<h2>YOUR PAYPAL ACCOUNT</h2>
										<p>Pay via credit or debit card, Paypal transfer or even via Bank account in just a few clicks.</p>
										<p>This method is super easy and well protected.</p>
										<a href="#">continue</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#order-review"><span>6</span>ORDER REVIEW</a>
						</div>
						<div id="order-review" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="col-sm-4">
									<div class="information">
										<h3>BILLING INFORMATION</h3>
										<h4>Thomas Albert</h4>
										<h5>Lorem Street 2178</h5>
										<p>12358 New Yourk</p>
										<h5>Phone : 123 456 789</h5>
										<p>E-mail: email@you,com</p>
										<a href="#">MODIFY</a>
									</div>
								</div>
							
								<div class="col-sm-4">
									<div class="information">
										<h3>SHIPPING INFORMATION</h3>
										<h4>Thomas Albert</h4>
										<h5>Lorem Street 2178</h5>
										<p>12358 New Yourk</p>
										<h5>Phone : 123 456 789</h5>
										<p>E-mail: email@you,com</p>
										<a href="#">MODIFY</a>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="information">
										<h3>CHOOSED PAYMENT METHOD</h3>
										<h4>Method : Paypal</h4>
										<p>Paypal address : email@you.com</p>
										<a id="shipping" href="#">MODIFY</a>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="place-order">
										<div class="order-list">
											<h1>PRODUCTS</h1>
											<h2>Total</h2>
											<h3>PRODUCT NAME DEMO   x 1 <span>$210</span></h3>
											<h3>PRODUCT NAME DEMO   x 2 <span>$300</span></h3>
										</div>
										<div class="final-total">
											<h4>Sub Total <span>$420</span></h4>
											<h5>Grand Total <span>$420</span></h5>
											<a href="#">Place Order</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="checkout-right">
					<h2>CHECKOUT PROGRESS</h2>
					<ul>
						<li><a href="#">Checkout Method</a></li>
						<li><a href="#">Billing  Information</a></li>
						<li><a href="#">Shipping  Information</a></li>
						<li><a href="#">Shipping  Method</a></li>
						<li><a href="#">Payment Information</a></li>
						<li><a href="#">Order Review</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section><!--End Checkout Area-->
<div class="brand-area section fix"><!--Start Brand Area-->
	<div class="container">
		<div class="row">
			<div class="section-title">
				<h2>Our Brands</h2>
				<div class="underline"></div>
			</div>
			<div class="brand-slider owl-carousel">
				<div class="brand-item"><img src="img/brand/brand-1.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-2.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-3.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-4.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-5.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-1.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-2.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-3.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-4.png" alt="" /></div>
				<div class="brand-item"><img src="img/brand/brand-5.png" alt="" /></div>
			</div>
		</div>
	</div>
</div><!--End Brand Area-->
<%@ include file="../include/footer.jsp" %>   

<!-- jQuery 2.1.4 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-2.1.4.min.js"></script>
<!-- Bootstrap JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
<!-- Owl Carousel JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
<!--countTo JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.countTo.js"></script>
<!-- mixitup JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.mixitup.min.js"></script>
<!-- magnific popup JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.magnific-popup.min.js"></script>
<!-- Appear JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.appear.js"></script>
<!-- MeanMenu JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.meanmenu.min.js"></script>
<!-- Nivo Slider JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.nivo.slider.pack.js"></script>
<!-- Scrollup JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.scrollup.min.js"></script>
<!-- simpleLens JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.simpleLens.min.js"></script>
<!-- Price Slider JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-price-slider.js"></script>
<!-- WOW JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/wow.min.js"></script>
<script>
   new WOW().init();
</script>   
<!-- Main JS -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/main.js"></script>

</body>

</html>