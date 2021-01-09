<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title>Puzzle | Blog</title>
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
		<h2>○○○'s Blog</h2>
	</div>
</div><!--End Title-->
<section class="blog-page page fix"><!-- Start Blog Area-->
	<div class="container">
		<div class="row" style="margin:20px;">
			<div style="float:left;">
				<p><b>○○○</b> 30개의 글</p>
			</div>
			<div style="float:right;">
				<a role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-plus-square"></i><b> 목록열기</b></a>
				<div class="collapse" id="collapseExample">
				 	<div class="well" style="position:absolute;width:80%;left:10%;height:300px;">
						<table class="table">
							<thead>
								<tr><th>제목</th><th>작성일</th></tr>
							</thead>
							<tbody>
								<tr>
									<td>Dapibus ac facilisis in<span class="badge">14</span></td>
									<td>2021-01-01</td>
								</tr>
								<tr>
									<td>Dapibus ac facilisis in<span class="badge">14</span></td>
									<td>2021-01-01</td>
								</tr>
								<tr>
									<td>Dapibus ac facilisis in<span class="badge">14</span></td>
									<td>2021-01-01</td>
								</tr>
								<tr>
									<td>Dapibus ac facilisis in<span class="badge">14</span></td>
									<td>2021-01-01</td>
								</tr>
							</tbody>
						</table>
						<!-- Pagination -->
						<div class="pagination" style="position:absolute;top:220px;">
							<ul>
								<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">6</a></li>
								<li><a href="#">7</a></li>
								<li><a href="#">8</a></li>
								<li><a href="#">9</a></li>
								<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
							</ul>
						</div>
				 	</div>
					<div style="height:300px;"></div>
				</div>
			</div>
		</div>
			<!-- <div class="col-sm-6 col-md-4">
				<div class="single-blog">
					<div class="content fix">
						<a class="image fix" href="blog-details.html"><img src="img/blog/blog-1.jpg" alt="" />
							<div class="date">
								<h4>25</h4>
								<h5>Aug</h5>
							</div>
						</a>
						<h2><a class="title" href="blog-details.html">Lorem ipsum dolor sit amet</a></h2>
						<div class="meta">
							<a href="#"><i class="fa fa-pencil-square-o"></i>John Lee</a>
							<a href="#"><i class="fa fa-calendar"></i>2 Days ago</a>
							<a href="#"><i class="fa fa-comments"></i>12 Comments</a>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim niam.</p>
					</div>
				</div>
			</div> -->
		<!-- Start Blog Area-->
		<div class="container">
		<div class="row">
		<c:forEach items="${list}" var="list">
			 <div class="col-sm-6 col-md-4">
				<div class="single-blog">
					<div class="content fix">
						<a class="image fix" href="blog-details.html"><img src="${list.picture}" alt="" />
						<div class="date">
								<h4>25</h4>
								<h5>Aug</h5>
						</div>
						</a>
						<h2><a class="title" href="blog-details.html">${list.title}</a></h2>
						<div class="meta">
							<i class="fa fa-pencil-square-o"></i>${list.userId}</a>
							<i class="fa fa-calendar"></i>${list.regiDate}</a>
							<i class="fa fa-comments"></i>12 Comments(아직안함)</a>
						</div>
					</div>
				</div>
			</div>		
			</c:forEach>
			</div>
			</div>
			<!-- Pagination -->
			<div class="pagination">
				<c:forEach begin="1" end="${pageNum}" var="num">
					<span>
						<a href="/pfp/blog/listPage?num=${num}">${num}</a>
					</span>
				</c:forEach>
			</div>
		</div>
	</div>
</section><!-- Start Blog Area-->
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