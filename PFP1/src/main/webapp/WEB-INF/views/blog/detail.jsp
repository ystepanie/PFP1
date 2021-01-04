<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title>Puzzle | Blog Details</title>
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
		<h2>Blog Details</h2>
	</div>
</div><!--End Title-->
<section class="blog-page page fix"><!-- Start Blog Details-->
	<div class="container">
		<div class="row">
				<div class="single-blog blog-details">
					<div class="content fix">
						<img src="<%=request.getContextPath() %>/resources/img/blog/blog-details.jpg" alt="" />
							<div class="date">
								<h4>25</h4>
								<h5>Aug</h5>
							</div>
						<h2>Lorem ipsum dolor sit amet</h2>
						<div class="meta">
							<a href="#"><i class="fa fa-pencil-square-o"></i>John Lee</a>
							<a href="#"><i class="fa fa-calendar"></i>2 Days ago</a>
							<a href="#"><i class="fa fa-comments"></i>12 Comments</a>
						</div>
						<p>에디터를 사용할까 고민 중</p>
					</div>
				</div>
				<div class="tagcloud fix">
						<div class="tab-pane fade active in" role="tabpanel">
							<a href="#">JEWELRY</a><a href="#">Necklaces</a><a href="#">Jewelry Sets</a><a href="#">Churi</a>
						</div>
					</div>
				<div id="comments">
					<div class="commentform">
						<form class="comment-form" id="commentform" method="post" action="#">
							<div class="row">
								<div class="col-md-10">
									<div class="form-input">
										<label for="comment" class="field-label">Your Comment<span>*</span></label>
										<textarea aria-required="true" name="comment" id="comment" rows="4"></textarea>
									</div>
								</div>
								<div class="col-md-2">
									<p class="form-submit" style="margin-top:20px;">
										<input type="submit" value="submit" id="submit" name="submit">
									</p>
								</div>
							</div>
						</form>
					</div><!-- end commentform -->
					<div class="comments-list">
						<h4 class="heading">댓글</h4>
						<ol class="commentlists">
							<li class="sin-comment">
								<div class="the-comment">
									<div class="avatar">
										<img alt="" src="img/blog/comment-1.jpg">	
									</div>
									<div class="comment-box">
										<div class="comment-author">
											<p class="com-name"><strong>Tom Cruze</strong></p>3 day ago  <a href="#" class="repost-link"> Repost </a> <a href="#" class="comment-reply-link"> Reply </a><a href="#"><i class="fa fa-bullhorn"></i>신고</a>
										</div>
										<div class="comment-text">
											<p>Lorem ipsum dolor sit amet, consectetur adi ing elit, sed do eiusmo empor incididunt ut labore et dolore magna aliqua magna aliqua Lorem ipsum dolor sit amet, consectetur adi ing elit, sed do eiusmo empor incididunt ut labore et dolore magna aliqua magna aliqua Lorem ipsum dolor sit amet, </p>
										</div>
									</div>
								</div>
								<ul class="children-comment">
									<li class="comment">
										<div class="the-comment">
											<div class="avatar">
												 <img alt="" src="img/blog/comment-2.jpg">
											</div>
											<div class="comment-box">
												<div class="comment-author">
													<p class="com-name"><strong>Nill Pori</strong></p>3 mins ago <a href="#" class="repost-link"> Repost </a> <a href="#" class="comment-reply-link"> Reply </a><a href="#"><i class="fa fa-pencil"></i>수정</a><a href="#"><i class="fa fa-trash"></i>삭제</a>
												</div>
												<div class="comment-text">
													<p>Lorem ipsum dolor sit amet, consectetur adi ing elit, sed do eiusmo empor incididunt ut labore et dolore magna aliqua magna aliqua Lorem ipsum dolor sit amet, consectetur adi ing elit, sed do eiusmo empor incididunt ut labore et dolore magna aliqua magna aliqua.<br>
												</p></div>
											</div>
										</div>
									</li><!-- #comment-## -->
								</ul><!-- .children -->
							</li><!-- #comment-## -->
							<li class="sin-comment">
								<div class="the-comment">
									<div class="avatar">
										<img alt="" src="img/blog/comment-3.jpg">
									</div>
									<div class="comment-box">
										<div class="comment-author">
											<p class="com-name"><strong>TOMAS LEE</strong></p>3 day ago  <a href="#" class="repost-link"> Repost </a> <a href="#" class="comment-reply-link"> Reply </a>
										</div>
										<div class="comment-text">
											<p>Lorem ipsum dolor sit amet, consectetur adi ing elit, sed do eiusmo empor incididunt ut labore et dolore magna aliqua magna aliqua Lorem ipsum dolor sit amet, consectetur adi ing elit, sed do eiusmo empor incididunt ut labore et dolore magna aliqua magna aliqua Lorem ipsum dolor sit amet, </p>
										</div>
									</div>
								</div>
							</li><!-- #comment-## -->
						</ol>
					</div>
				</div>
		</div>
	</div>
</section><!-- Start Blog Details-->
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