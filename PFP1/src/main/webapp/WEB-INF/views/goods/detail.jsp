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
   <style>
   	.header-fixed {
    width: 100% 
}

.header-fixed > thead,
.header-fixed > tbody,
.header-fixed > thead > tr,
.header-fixed > tbody > tr,
.header-fixed > thead > tr > th,
.header-fixed > tbody > tr > td {
    display: block;
}

.header-fixed > tbody > tr:after,
.header-fixed > thead > tr:after {
    content: ' ';
    display: block;
    visibility: hidden;
    clear: both;
}

.header-fixed > tbody {
    overflow-y: auto;
    height: 180px;
    scrollbar-width: none;
}

.col3 > tbody > tr > td,
.col3 > thead > tr > th {
	width:33.3%;
	float:left;
}
.col2 > tbody > tr > td,
.col2 > thead > tr > th {
	width:50%;
	float:left;
}
   </style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="page-title fix"><!--Start Title-->
   <div class="overlay section">
      <h2>Product Details</h2>
   </div>
</div><!--End Title-->
<section class="product-page page fix"><!--Start Product Details Area-->
   <div class="container">
      <div class="row">
         <div class="col-sm-6">
            <div class="details-pro-tab">
         <!-- Tab panes -->
               <div class="tab-content details-pro-tab-content">
                  <div class="tab-pane fade in active" id="image-1">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="${detail.thumbnail}">
                           <img src="${detail.thumbnail}" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
                  <div class="tab-pane fade" id="image-2">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="<%=request.getContextPath() %>/resources/img/single-product/2.jpg">
                           <img src="<%=request.getContextPath() %>/resources/img/single-product/2.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
                  <div class="tab-pane fade" id="image-3">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="<%=request.getContextPath() %>/resources/img/single-product/3.jpg">
                           <img src="<%=request.getContextPath() %>/resources/img/single-product/3.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
                  <div class="tab-pane fade" id="image-4">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="<%=request.getContextPath() %>/resources/img/single-product/4.jpg">
                           <img src="<%=request.getContextPath() %>/resources/img/single-product/4.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
               </div>
               <!-- Nav tabs -->
               <ul class="tabs-list details-pro-tab-list" role="tablist">
                  <li class="active"><a href="#image-1" data-toggle="tab"><img src="${detail.thumbnail}" alt="" /></a></li>
                  <li><a href="#image-2" data-toggle="tab"><img src="<%=request.getContextPath() %>/resources/img/single-product/thumb-2.jpg" alt="" /></a></li>
                  <li><a href="#image-3" data-toggle="tab"><img src="<%=request.getContextPath() %>/resources/img/single-product/thumb-3.jpg" alt="" /></a></li>
                  <li><a href="#image-4" data-toggle="tab"><img src="<%=request.getContextPath() %>/resources/img/single-product/thumb-4.jpg" alt="" /></a></li>
               </ul>
            </div>
         </div>
         <div class="col-sm-6">
            <div class="shop-details">
               <!-- Product Name -->
               <h2>${detail.itemName}</h2>
               <!-- Product Ratting -->
               <div class="pro-ratting">
                  <i class="on fa fa-star"></i>
                  <i class="on fa fa-star"></i>
                  <i class="on fa fa-star"></i>
                  <i class="on fa fa-star"></i>
                  <i class="on fa fa-star-half-o"></i>
               </div>
               <h3><span>$165</span>$150</h3>
               <h4>10 Reviews</h4>
               <h5>Availability - <span>In Stock</span></h5>
               <h6>QUICK OVERVIEW</h6>
               <div class="bg-warning" style="height:200px;">${detail.itemContent}</div><br>
               <div class="bg-danger" style="height:80px;">최근 거래가</div><br>
               <div class="select-menu fix">
                  <div class="sort fix">
                     <h4>SIZE</h4>
                     <select>
                        <option value="all">all</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                     </select>
                  </div>
               </div><br>
               <div class="container" style="width:100%;">
               	<div class="row" style="width:100%;">
               		<div class="col" style="width:100%;">
               			<button type="button" class="btn btn-primary" style="width:49%;font-size:100%;"><b style="float:left;">구매 |</b><font style="float:right;">즉시 구매가 - ${detail.saleBid}원</font></button>
               			<button type="button" class="btn btn-danger" style="width:49%;font-size:100%;"><b style="float:left;">판매 |</b><font style="float:right;">즉시 판매가 - ${detail.buyBid}원</font></button>
               		</div>
               	</div>
               </div><br>
               <div class="action-btn">
                  <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  <a href="#"><i class="fa fa-heart-o"></i></a>
                  <a href="#"><i class="fa fa-refresh"></i></a>
               </div>
            </div>
         </div><br>
         <div class="col-sm-12 fix">
         	<div class="section-title">
	         	<div class="row">
	         		<h4 style="float:left;margin-left:50px;">최근 거래 시세</h4>
		         	<div class="btn-group btn-group-toggle" data-toggle="buttons" style="float:right;margin-right:50px;">
			         	<label class="btn btn-default"><input type="radio" name="period">1주</label>
			         	<label class="btn btn-default"><input type="radio" name="period">1개월</label>
			         	<label class="btn btn-default"><input type="radio" name="period">3개월</label>
			         	<label class="btn btn-default"><input type="radio" name="period">6개월</label>
			         	<label class="btn btn-default"><input type="radio" name="period">1년</label>
			         	<label class="btn btn-primary"><input type="radio" name="period">전체</label>
		         	</div>
	         	</div>
	         	<div class="row">
	         		<canvas id="canvasChart" class="chartjs-render-monitor"></canvas>
	         	</div>
         	</div>
         	
            <div class="description">
               <!-- Nav tabs -->
               <ul class="nav product-nav">
                  <li class="active"><a data-toggle="tab" href="#description">최근 거래 목록</a></li>
                  <li class=""><a data-toggle="tab" href="#review">입찰 현황</a></li>
                  <li class=""><a data-toggle="tab" href="#tags">tags</a></li>
                  <li class=""><a data-toggle="tab" href="#custom-tags">CUSTOM TABS</a></li>
               </ul>
               <!-- Tab panes -->
               <div class="tab-content">
                  <div id="description" class="tab-pane fade active in" role="tabpanel">
                  	<table class="table table-hover header-fixed col3">
                  		<thead>
                  			<tr>
	                  			<th>옵션</th>
	                  			<th>거래가</th>
	                  			<th>거래일</th>
	                  		</tr>
                  		</thead>
                  		<tbody style="overflow-y:scroll;height:100px;">
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  				<td>2021.01.01</td>
                  			</tr>
                  		</tbody>
                  	</table>
                  </div>
                  <div id="review" class="tab-pane fade" role="tabpanel" style="height:160px;">
                  	<div class="col-sm-6">
                  	<table class="table table-hover header-fixed col2">
                  		<thead>
                  			<tr>
	                  			<th>옵션</th>
	                  			<th>구매입찰</th>
	                  		</tr>
                  		</thead>
                  		<tbody style="overflow-y:scroll;height:100px;background-color:#EBF7FF;" >
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  			</tr>
                  			<tr>
                  				<td>250mm</td>
                  				<td>230,000원</td>
                  			</tr>
                  			<tr>
                  				<td>235mm</td>
                  				<td>325,000원</td>
                  			</tr>
                  			<tr>
                  				<td>255mm</td>
                  				<td>355,000원</td>
                  			</tr>
                  		</tbody>
                  	</table>
                  	</div>
                  	<div class="col-sm-6"> 
                  	<table class="table table-hover header-fixed col2">
                  		<thead>
                  			<tr>
	                  			<th>옵션</th>
	                  			<th>판매입찰</th>
	                  		</tr>
                  		</thead>
                  		<tbody style="overflow-y:scroll;height:100px;background-color:#FFEAEA;">
                  			<tr>
                  				<td>240mm</td>
                  				<td>400,000원</td>
                  			</tr>
                  			<tr>
                  				<td>250mm</td>
                  				<td>230,000원</td>
                  			</tr>
                  			<tr>
                  				<td>240mm</td>
                  				<td>400,000원</td>
                  			</tr>
                  			<tr>
                  				<td>255mm</td>
                  				<td>355,000원</td>
                  			</tr>
                  		</tbody>
                  	</table>
                  	</div>  
                  </div>
                  <div id="tags" class="tab-pane fade" role="tabpanel">
                     <a href="#">JEWELRY</a><a href="#">Necklaces</a><a href="#">Jewelry Sets</a><a href="#">Churi</a>
                  </div>
                  <div id="custom-tags" class="tab-pane fade" role="tabpanel">
                     <a href="#">JEWELRY</a><a href="#">Necklaces</a><a href="#">Jewelry Sets</a><a href="#">Churi</a>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-12 fix">
            <div class="section-title">
               <h2>관련 상품</h2>
               <div class="underline"></div>
            </div>
            <div class="related-pro-slider owl-carousel">
               <!-- Single Product Start -->
               <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="product-details.html" class="pro-image fix"><img src="img/product/1.jpg" alt="product" /></a>
                     <!-- Product action Btn -->
                     <div class="product-action-btn">
                        <a class="quick-view" href="#"><i class="fa fa-search"></i></a>
                        <a class="favorite" href="#"><i class="fa fa-heart-o"></i></a>
                        <a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                     </div>
                  </div>
                  <div class="pro-name-price-ratting">
                     <!-- Product Name -->
                     <div class="pro-name">
                        <a href="product-details.html">Product Name Demo</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                     <!-- Product Price -->
                     <div class="pro-price fix">
                        <p><span class="old">$165</span><span class="new">$150</span></p>
                     </div>
                  </div>
               </div><!-- Single Product End -->
               <!-- Single Product Start -->
               <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="product-details.html" class="pro-image fix"><img src="img/product/2.jpg" alt="product" /></a>
                     <!-- Product action Btn -->
                     <div class="product-action-btn">
                        <a class="quick-view" href="#"><i class="fa fa-search"></i></a>
                        <a class="favorite" href="#"><i class="fa fa-heart-o"></i></a>
                        <a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                     </div>
                  </div>
                  <div class="pro-name-price-ratting">
                     <!-- Product Name -->
                     <div class="pro-name">
                        <a href="product-details.html">Product Name Demo</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                     <!-- Product Price -->
                     <div class="pro-price fix">
                        <p><span class="old">$165</span><span class="new">$150</span></p>
                     </div>
                  </div>
               </div><!-- Single Product End -->
               <!-- Single Product Start -->
               <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="product-details.html" class="pro-image fix"><img src="img/product/3.jpg" alt="product" /></a>
                     <!-- Product action Btn -->
                     <div class="product-action-btn">
                        <a class="quick-view" href="#"><i class="fa fa-search"></i></a>
                        <a class="favorite" href="#"><i class="fa fa-heart-o"></i></a>
                        <a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                     </div>
                  </div>
                  <div class="pro-name-price-ratting">
                     <!-- Product Name -->
                     <div class="pro-name">
                        <a href="product-details.html">Product Name Demo</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                     <!-- Product Price -->
                     <div class="pro-price fix">
                        <p><span class="old">$165</span><span class="new">$150</span></p>
                     </div>
                  </div>
               </div><!-- Single Product End -->
               <!-- Single Product Start -->
               <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="product-details.html" class="pro-image fix"><img src="img/product/4.jpg" alt="product" /></a>
                     <!-- Product action Btn -->
                     <div class="product-action-btn">
                        <a class="quick-view" href="#"><i class="fa fa-search"></i></a>
                        <a class="favorite" href="#"><i class="fa fa-heart-o"></i></a>
                        <a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                     </div>
                  </div>
                  <div class="pro-name-price-ratting">
                     <!-- Product Name -->
                     <div class="pro-name">
                        <a href="product-details.html">Product Name Demo</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                     <!-- Product Price -->
                     <div class="pro-price fix">
                        <p><span class="old">$165</span><span class="new">$150</span></p>
                     </div>
                  </div>
               </div><!-- Single Product End -->
               <!-- Single Product Start -->
               <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="product-details.html" class="pro-image fix"><img src="img/product/5.jpg" alt="product" /></a>
                     <!-- Product action Btn -->
                     <div class="product-action-btn">
                        <a class="quick-view" href="#"><i class="fa fa-search"></i></a>
                        <a class="favorite" href="#"><i class="fa fa-heart-o"></i></a>
                        <a class="add-cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                     </div>
                  </div>
                  <div class="pro-name-price-ratting">
                     <!-- Product Name -->
                     <div class="pro-name">
                        <a href="product-details.html">Product Name Demo</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                     <!-- Product Price -->
                     <div class="pro-price fix">
                        <p><span class="old">$165</span><span class="new">$150</span></p>
                     </div>
                  </div>
               </div><!-- Single Product End -->
            </div>
         </div>
      </div>
   </div>
</section><!--End Product Details Area-->
<div class="brand-area section fix"><!--Start Brand Area-->
   <div class="container">
      <div class="row">
         <div class="section-title">
            <h2>관련 블로그</h2>
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
<!-- ChartJS -->
<script src="<%=request.getContextPath()%>/resources/plugins/chart.js/Chart.min.js"></script>
<!--  javascript 끼리 충돌이 일어나는지 왜 차트가 안 뜨는지 모르겠다. js 파일들을 다시 잘 확인해봐야겠다. -->
<script>

var chartLabels = [];
var chartData1=[], chartData2=[], chartData3=[];
var txtTitle = '전체 매출 차트';

window.onload = function() {
	<%-- $.getJSON("<%=request.getContextPath()%>/api/stat/manageChart",
			function(data) {
	  $.each(data, function(idx, obj) {
		 chartLabels.push(obj.period);
	     chartData1.push(obj.totalPrice);
	     chartData2.push(obj.orderCnt);
	     chartData3.push(obj.cancleCnt);
	  });
	  createChart();
	}); --%>
	chartLabels = [1, 2, 3, 4, 5];
	chartData1 = [10, 10, 10, 10, 10];
	chartData2=[11, 4, 12, 45,12];
	chartData3=[50, 120 ,12 ,50, 17];
	createChart();
};

function createChart() {
	var ctx = document.getElementById('canvasChart').getContext('2d');
	var chartData = {
			labels: chartLabels,
			datasets: [{
				type: 'line',
				label: '총 주문금액(단위:10만원)',
				borderColor: '#FF5E00',
				borderWidth: 2,
				fill: false,
				data: chartData1
			}, {
				type: 'bar',
				label: '주문 수',
				backgroundColor: '#1DDB16',
				data: chartData2,
				borderColor: 'white',
				borderWidth: 2
			}, {
				type: 'bar',
				label: '취소/교환/반품 수',
				backgroundColor: '#FF00DD',
				data: chartData3
			}]

		};
	window.myMixedChart = new Chart(ctx, {
		type: 'bar',
		data: chartData,
		options: {
			responsive: true,
			title: {
				display: true,
				text: txtTitle
			},
			tooltips: {
				mode: 'index',
				intersect: true
			}
		}
	});
}

</script>
</body>

</html>