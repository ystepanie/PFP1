<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
   <meta charset="UTF-8">
   <title>Olongkar | Product Details</title>
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
   <link rel="stylesheet" type="text/css" href="css/responsive.css" />
   <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
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
                        <a class="simpleLens-lens-image" data-lens-image="img/single-product/1.jpg">
                           <img src="img/single-product/1.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
                  <div class="tab-pane fade" id="image-2">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="img/single-product/2.jpg">
                           <img src="img/single-product/2.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
                  <div class="tab-pane fade" id="image-3">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="img/single-product/3.jpg">
                           <img src="img/single-product/3.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
                  <div class="tab-pane fade" id="image-4">
                     <div class="simpleLens-big-image-container">
                        <a class="simpleLens-lens-image" data-lens-image="img/single-product/4.jpg">
                           <img src="img/single-product/4.jpg" alt="" class="simpleLens-big-image">
                        </a>
                     </div>
                  </div>
               </div>
               <!-- Nav tabs -->
               <ul class="tabs-list details-pro-tab-list" role="tablist">
                  <li class="active"><a href="#image-1" data-toggle="tab"><img src="img/single-product/thumb-1.jpg" alt="" /></a></li>
                  <li><a href="#image-2" data-toggle="tab"><img src="img/single-product/thumb-2.jpg" alt="" /></a></li>
                  <li><a href="#image-3" data-toggle="tab"><img src="img/single-product/thumb-3.jpg" alt="" /></a></li>
                  <li><a href="#image-4" data-toggle="tab"><img src="img/single-product/thumb-4.jpg" alt="" /></a></li>
               </ul>
            </div>
         </div>
         <div class="col-sm-6">
            <div class="shop-details">
               <!-- Product Name -->
               <h2>PRODUCT NAME DEMO</h2>
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
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco aboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepte.</p>
               <div class="select-menu fix">
                  <div class="sort fix">
                     <h4>SIZE</h4>
                     <select>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                     </select>
                  </div>
                  <div class="sort fix">
                     <h4>Color</h4>
                     <select>
                        <option value="pink">pink</option>
                        <option value="red">red</option>
                        <option value="blue">blue</option>
                     </select>
                  </div>
                  <div class="sort fix">
                     <h4>Qty</h4>
                     <select>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                     </select>
                  </div>
               </div>
               <div class="review">
                  <textarea rows="4" placeholder="Write Your Review..."></textarea>
               </div>
               <div class="action-btn">
                  <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  <a href="#"><i class="fa fa-heart-o"></i></a>
                  <a href="#"><i class="fa fa-refresh"></i></a>
               </div>
            </div>
         </div>
         <div class="col-sm-12 fix">
            <div class="description">
               <!-- Nav tabs -->
               <ul class="nav product-nav">
                  <li class="active"><a data-toggle="tab" href="#description">DESCRIPTION</a></li>
                  <li class=""><a data-toggle="tab" href="#review">REVIEWS</a></li>
                  <li class=""><a data-toggle="tab" href="#tags">PRODUCTS TAGS</a></li>
                  <li class=""><a data-toggle="tab" href="#custom-tags">CUSTOM TABS</a></li>
               </ul>
               <!-- Tab panes -->
               <div class="tab-content">
                  <div id="description" class="tab-pane fade active in" role="tabpanel">
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco aboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepte.</p>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamc.</p>
                  </div>
                  <div id="review" class="tab-pane fade" role="tabpanel">
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco aboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepte.</p>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamc.</p>
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
               <h2>RELATEDE PRODUCT</h2>
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