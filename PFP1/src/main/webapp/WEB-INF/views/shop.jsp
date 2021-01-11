<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title>Puzzle | Shop</title>
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
<%@ include file="include/header.jsp" %>
<div class="page-title fix"><!--Start Title-->
	<div class="overlay section">
		<h2>Shop</h2>
	</div>
</div><!--End Title-->
<div class="shop-product-area section fix"><!--Start Shop Area-->
	<div class="container">
		<div class="row">
			<div class="shop-tool-bar col-sm-12 fix">
				<div class="view-mode">
					<a href="shop.html" class="active"><i class="fa fa-th"></i></a>
					<a href="shop-list.html"><i class="fa fa-th-list"></i></a>
				</div>
				<div class="sort-by">
					<span>Sort By</span>
					<select id="sort-by" onchange="changeSortSelect()">
						<option selected="selected" value="recommendation">추천순</option>
						<option value="popularity">인기순</option>
						<option value="latest">최신 발매순</option>
						<option value="cheap">낮은 판매가순</option>
						<option value="expensive">높은 판매가순</option>
					</select>
				</div>
				<div class="show-product">
					<span>Show</span>
					<select name="sort-by">
						<option selected="selected" value="mercede">16</option>
						<option value="saab">20</option>
						<option value="mercedes">24</option>
					</select>
					<span>Per Page</span>
				</div>
				<div class="pro-Showing">
					<span>Showing 1 - 12 of ${fn:length(list) } items</span>
				</div><br><br>
				<div class="sin-shop-sidebar product-price-range">
						<h2>Price</h2>
						<div class="slider-range-container">
							<div id="slider-range" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 77.125%;"></div><span id="slider-ui-first" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 0%;"></span><span id="slider-ui-second" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 77.125%;"></span></div>
							<p>
								<input type="text" id="price-amount" readonly="" onchange="changePriceRange()">
							</p>
						</div>
					</div>
			</div>
			<div id="shopList" class="shop-products">			
			</div>
		</div>
	</div>
</div><!--Start Shop Area-->
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
<%@ include file="include/footer.jsp" %>	

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
<script type="text/javascript">
$(document).ready(function(){
	var strHtml = '';
	$.getJSON("<%=request.getContextPath()%>/api/shop",
			{ s: $('#sort-by').val() },
			function(data) {
	  $.each(data, function(idx, obj) {
		strHtml += '<div class="col-sm-4 col-md-3 fix"><div class="product-item fix"><div class="product-img-hover"><a href="goods/detail?m=';
		strHtml += obj.modelNum;
		strHtml += '" class="pro-image fix"><img src="';
		strHtml += obj.thumbnail;
		strHtml += '" alt="product" /></a><div class="product-action-btn"><a class="quick-view" href="#"><i class="fa fa-search"></i></a><a class="favorite" href="#"><i class="fa fa-heart-o"></i></a><a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a></div></div><div class="pro-name-price-ratting"><div class="pro-name"><a href="product-details.html">';
		strHtml += obj.itemName;
		strHtml += '</a></div><div class="pro-ratting"><i class="on fa fa-star"></i><i class="on fa fa-star"></i><i class="on fa fa-star"></i><i class="on fa fa-star"></i><i class="on fa fa-star-half-o"></i></div><div class="pro-price fix"><span class="new">';
		strHtml += obj.saleBid;
		strHtml += '원</span></p></div></div></div></div>';
	  });
	  $('#shopList').empty();
	  $('#shopList').append(strHtml);
	});
});

function changeSortSelect() {
	var strHtml = '';
	$.getJSON("<%=request.getContextPath()%>/api/shop",
			{ s: $('#sort-by').val() },
			function(data) {
	  $.each(data, function(idx, obj) {
		strHtml += '<div class="col-sm-4 col-md-3 fix"><div class="product-item fix"><div class="product-img-hover"><a href="goods/detail?m=';
		strHtml += obj.modelNum;
		strHtml += '" class="pro-image fix"><img src="';
		strHtml += obj.thumbnail;
		strHtml += '" alt="product" /></a><div class="product-action-btn"><a class="quick-view" href="#"><i class="fa fa-search"></i></a><a class="favorite" href="#"><i class="fa fa-heart-o"></i></a><a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a></div></div><div class="pro-name-price-ratting"><div class="pro-name"><a href="product-details.html">';
		strHtml += obj.itemName;
		strHtml += '</a></div><div class="pro-ratting"><i class="on fa fa-star"></i><i class="on fa fa-star"></i><i class="on fa fa-star"></i><i class="on fa fa-star"></i><i class="on fa fa-star-half-o"></i></div><div class="pro-price fix"><span class="new">';
		strHtml += obj.saleBid;
		strHtml += '원</span></p></div></div></div></div>';
	  });
	  $('#shopList').empty();
	  $('#shopList').append(strHtml);
	});
}

function changePriceRange() {
	$('#slider-ui-first').on('mouseout', function () {

		alert('변경');
	});
}
</script>
</body>

</html>