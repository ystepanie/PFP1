<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
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
   </style>
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
							<a class="active" data-toggle="collapse" data-parent="#checkout-progress" href="#size-selection"><span>1</span>사이즈 선택</a>
						</div>
						<div id="size-selection" class="panel-collapse collapse in">
							<div class="panel-body">
								<table class="table table-hover header-fixed col3">
									<thead>
										<tr>
											<th>옵션 선택</th>
											<th>최고 입찰가</th>
											<th>최저 판매가</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>200</td>
											<td>0</td>
											<td>0</td>
										</tr>
										<tr>
											<td>200</td>
											<td>0</td>
											<td>0</td>
										</tr>
										<tr>
											<td>200</td>
											<td>0</td>
											<td>0</td>
										</tr>
										<tr>
											<td>200</td>
											<td>0</td>
											<td>0</td>
										</tr>
										<tr>
											<td>200</td>
											<td>0</td>
											<td>0</td>
										</tr>
										<tr>
											<td>200</td>
											<td>0</td>
											<td>0</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#bid-price"><span>2</span>결제금액</a>
						</div>
						<div id="bid-price" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="col-sm-12" style="background-color:#F6F6F6;">
									<p style="padding-top:10px;padding-bottom:30px;">최고입찰가 최저판매가</p>
									<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%;margin-bottom:30px;">
										<label class="btn btn-primary" id="btnBid" style="width:50%;font-size:large;" onclick="$('#btnImmediate').removeClass('btn btn-primary').addClass('btn btn-default');$(this).removeClass('btn btn-default').addClass('btn btn-primary');">
											<input type="radio" name="jb-radio" id="jb-radio-1"> 구매입찰
										</label>
										<label class="btn btn-default" id="btnImmediate" style="width:50%;font-size:large;" onclick="$('#btnBid').removeClass('btn btn-primary').addClass('btn btn-default');$(this).removeClass('btn btn-default').addClass('btn btn-primary');">
											<input type="radio" name="jb-radio" id="jb-radio-2"> 즉시구매
										</label>
									</div>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-won"></i></span>
										<input id="txtBidPrice" type="number" placeholder="입찰가격입력" class="form-control" step="1000" style="text-align:right;" autocomplete="on">
										<span class="input-group-addon">원</span>
									</div>
									<div class="price-desc" id="price-desc-msg" style="float:right;margin-bottom:10px;">천원 단위로 입찰가능합니다</div>
								</div>
								<div class="col-sm-12">
									<div class="place-order">
										<div class="order-list">
											<h3>배송비 <span>0원</span></h3>
											<h3>정품 판정비 <span>0원</span></h3>
										</div>
										<div class="final-total">
											<h5>총 결제금액 <span>42000원</span></h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#bid-period"><span>3</span>입찰기한</a>
						</div>
						<div id="bid-period" class="panel-collapse collapse">
							<div class="panel-body">
								<h4 align="center" style="margin:10px;" id="bidEndDate">2020-0 입찰 종료</h4>
								<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%;margin-bottom:30px;">
									<label class="btn btn-default" style="width:16.666666666667%;" id="lbBp-1d">
										<input type="radio" name="bidPeriod" id="bp-1d"> 1일
									</label>
									<label class="btn btn-default" style="width:16.666666666667%;" id="lbBp-3d">
										<input type="radio" name="bidPeriod" id="bp-3d"> 3일
									</label>
									<label class="btn btn-default" style="width:16.666666666667%;" id="lbBp-7d">
										<input type="radio" name="bidPeriod" id="bp-7d"> 7일
									</label>
									<label class="btn btn-default" style="width:16.666666666667%;" id="lbBp-15d">
										<input type="radio" name="bidPeriod" id="bp-15d"> 15일
									</label>
									<label class="btn btn-default" style="width:16.666666666667%;" id="lbBp-30d">
										<input type="radio" name="bidPeriod" id="bp-30d" checked="checked"> 30일
									</label>
									<label class="btn btn-default" style="width:16.666666666667%;" id="lbBp-60d">
										<input type="radio" name="bidPeriod" id="bp-60d"> 60일
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#shipping-method"><span>4</span>배송지</a>
						</div>
						<div id="shipping-method" class="panel-collapse collapse">
							<div class="panel-body">
								<label for="shipping-address">배송지</label><c:if test="${member != null}"><p align="right">${member.address} <i class="fa fa-chevron-right"></i></p></c:if>
								<hr>
								<div class="dropdown" style="width:100%;">
								  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="width:100%;">
								    <font id="shippingMessageDrop" style="float:left;">배송 메세지 직접 입력</font>
								    <span class="caret" style="float:right;"></span>
								  </button>
								  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
								    <li role="presentation"><a role="menuitem" tabindex="-1" onclick="$('#shippingMessageDrop').text('배송 메세지 직접 입력');$('#txtShippingMessage').val('');$('#txtShippingMessage').attr('disabled', false);">배송 메세지 직접 입력</a></li>
								    <li role="presentation"><a role="menuitem" tabindex="-1" onclick="$('#shippingMessageDrop').text('배송 전에 미리 연락 바랍니다');$('#txtShippingMessage').val('배송 전에 미리 연락 바랍니다');$('#txtShippingMessage').attr('disabled', true);">배송 전에 미리 연락 바랍니다</a></li>
								    <li role="presentation"><a role="menuitem" tabindex="-1" onclick="$('#shippingMessageDrop').text('부재 시 택배 보관함에 맡겨주세요');$('#txtShippingMessage').val('부재 시 택배 보관함에 맡겨주세요');$('#txtShippingMessage').attr('disabled', true);">부재 시 택배 보관함에 맡겨주세요</a></li>
								    <li role="presentation"><a role="menuitem" tabindex="-1" onclick="$('#shippingMessageDrop').text('부재 시 경비실에 맡겨주세요');$('#txtShippingMessage').val('부재 시 경비실에 맡겨주세요');$('#txtShippingMessage').attr('disabled', true);">부재 시 경비실에 맡겨주세요</a></li>
								    <li role="presentation"><a role="menuitem" tabindex="-1" onclick="$('#shippingMessageDrop').text('부재 시 전화주시거나 문자 남겨주세요');$('#txtShippingMessage').val('부재 시 전화주시거나 문자 남겨주세요');$('#txtShippingMessage').attr('disabled', true);">부재 시 전화주시거나 문자 남겨주세요</a></li>
								  </ul>
								</div>
								<div class="input-group" style="width:100%;">
  									<input type="text" class="form-control" placeholder="요청사항을 직접 입력해주세요(최대 20자)" maxlength="21" id="txtShippingMessage" autocomplete="on">
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" >
							<a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#payment-met"><span>5</span>유의사항</a>
						</div>
						<div id="payment-met" class="panel-collapse collapse">
							<div class="panel-body">
								<ul style="list-style-type:disc;">
		                            <li>구매입찰 가격을 등록하면 최고 입찰가부터 거래가 체결됩니다.</li>
		                            <li>판매자와 구매자가 등록한 가격이 동일할 경우, 거래가 자동으로 성사되고 자동 결제됩니다.</li>
		                            <li>검수 성공 상품만 배송해 드립니다.</li>
		                            <li>즉시구매 가격을 입력하면 할부 결제할 수 있습니다.</li>
		                            <li>할부 결제를 원할 시 신용카드 및 카카오페이 등을 선택해 주세요. 결제하실 신용카드와 할부 기간을 선택할 수 있습니다.</li>
		                            <li>XXBLUE에 등록한 카드로 자동 결제하려면 '자동결제' 버튼을 클릭하세요. '자동결제'를 이용하면 신용카드 정보를 매번 입력하지 않아도, 등록된 신용카드 정보로 편리하게 결제할 수 있습니다.</li>
		                        </ul>
							</div>
						</div>
					</div>
				</div>
				<div class="btn-group btn-group-justified" role="group" style="margin-top:30px;">
					<button type="button" class="btn btn-inverse">이전</button>
	  				<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
			<div class="col-md-3">
				<img alt="" src="http://t3.gstatic.com/images?q=tbn:ANd9GcSs4PkoAnfcMkhH5v9IGZuAZTf74ttvvbmBnFtjHttGicvPPs05a-zMMYDbPhp2">
				<p style="margin:10px;padding-bottom:10px;font-weight:bold;">상품이름</p>
				<div class="checkout-right">
					<h2>CHECKOUT PROGRESS</h2>
					<ul>
						<li><a data-toggle="collapse" data-parent="#checkout-progress" href="#size-selection">사이즈 선택</a></li>
						<li><a data-toggle="collapse" data-parent="#checkout-progress" href="#bid-price">결제금액</a></li>
						<li><a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#bid-period">입찰기한</a></li>
						<li><a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#shipping-method">배송지</a></li>
						<li><a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#payment-met">유의사항</a></li>
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
<script type="text/javascript">
//입찰가격입력 폼에서 천단위만 입력 가능한 함수
$('#txtBidPrice').on('change', function() {
    var n = $(this).val(); 
    n = Math.floor(n/1000) * 1000; 
    //alert(n);  
    $(this).val(n);
 });
 
 //입찰 종료일 변경 함수
<% Calendar day = Calendar.getInstance();
day.add(Calendar.DATE , 30);%>
$('#bidEndDate').text(<%=day.get(day.YEAR)%>+'-'+<%=(day.get(day.MONTH)+1)%>+'-'+<%=day.get(day.DATE)%>+ ' 입찰 종료');
$('#lbBp-30d').trigger('click');
$('#lbBp-30d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 30);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
$('#lbBp-1d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 1);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
$('#lbBp-3d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 3);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
$('#lbBp-7d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 7);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
$('#lbBp-15d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 15);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
$('#lbBp-30d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 30);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
$('#lbBp-60d').bind('click', function () {
	<% day = Calendar.getInstance();
	day.add(Calendar.DATE , 60);%>
	$('#bidEndDate').text('<%=day.get(day.YEAR)%>-<%=(day.get(day.MONTH)+1)%>-<%=day.get(day.DATE)%> 입찰 종료');
});
</script>
</html>