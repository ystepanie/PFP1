<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE HTML>
<html>
<head>
   <meta charset="UTF-8">
   <title>Puzzle | Check Bid-Content</title>
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

input[type="checkbox"] {
    display:none;
}
input[type="checkbox"] + label span {
    display: inline-block;
    width: 24px;
    height: 24px;
    margin: -2px 10px 0 0;
    vertical-align: middle;
    cursor: pointer;
    background: url("<%=request.getContextPath() %>/resources/img/checkbox.svg") left top no-repeat;
    background-size: cover;
}
input[type="checkbox"]:checked + label span {
    background: url("<%=request.getContextPath() %>/resources/img/checkbox.svg") -26px top no-repeat;
    background-size: cover;
}
   </style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="page-title fix"><!--Start Title-->
   <div class="overlay section">
      <h2>입찰 내용 확인</h2>
   </div>
</div><!--End Title-->
<section class="checkout-page page fix"><!--Start Checkout Area-->
   <div class="container">
      <div class="row">
         <div class="col-md-9">
            <div class="card" style="background-color:white;margin-bottom:20px;">
               <div class="card-body" style="padding:10px;">
                  <div class="order-list">
                     <h3>사이즈 <span>${size}</span></h3>
                  </div>
                  <h5 class="card-title" style="background-color:gray;color:white;text-align:center;padding:5px;">입찰 금액</h5>
                  <div class="place-order" style="padding:5px;">
                     <div class="order-list">
                        <h3>입찰가 <span>${buyPrice}원</span></h3>
                        <h3>배송비 <span>0원</span></h3>
                        <h3>정품 판정비 <span>0원</span></h3>
                     </div>
                     <div class="final-total">
                        <h5>총 결제금액 <span id="totalPrice">${buyPrice}원</span></h5>
                     </div>
                  </div>
                  <h5 class="card-title" style="background-color:gray;color:white;text-align:center;padding:5px;">세부내용</h5>
                  <div class="place-order" style="padding:5px;">
                     <div class="order-list">
                        <h3>입찰기한 <span>${endDate}ay</span></h3><hr>
                        <h3>배송주소 <span>${buyAddress}</span></h3><hr>
                        <h3>배송메세지 <span>${deliveryMessage}<c:if test="${empty deliveryMessage}">(없음)</c:if></span></h3>
                     </div>
                  </div>
               </div>
            </div>
            <div class="panel-group" id="checkout-progress">
               <div class="panel panel-default">
                  <div class="panel-heading" >
                     <a class="active" data-toggle="collapse" data-parent="#checkout-progress" href="#payment-method"><span>1</span>결제방법 <i id="iconSizeSelection" style="color:red;" class="fa fa-exclamation-triangle fa-lg"></i><font id="txtSizeSelection" style="float:right;margin-right:30px;"></font></a>
                  </div>
                  <div id="payment-method" class="panel-collapse collapse in">
                     <div class="panel-body">
                        <label class="btn btn-default" id="lbEasy-payment" style="width:100%;margin-bottom:10px;">
                           <input type="radio" name="methodOfPayment" id="easy-payment" value="easy" checked="checked"> 간편결제
                        </label>
                        <div id="card-plus">
                        	<label class="btn btn-default">
                        		카드번호<br>이름<br>유효기간<br><i class="fa fa-trash"></i>
                        	</label>
                        	<c:forEach var="listCardInfo" items="${listCardInfo}">
                        		<label class="btn btn-default">
	                        		${listCardInfo.cardNum}<br>${listCardInfo.name}<br>${listCardInfo.period}<br><i class="fa fa-trash"></i>
	                        	</label>
                        	</c:forEach>
                           <button class="btn btn-light btn-lg" onclick="addCardPopupClick()"><i class="fa fa-plus"></i> 카드추가</button>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="panel panel-default">
                  <div class="panel-heading" >
                     <a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#bid-agreement"><span>2</span>입찰동의 <i id="iconBidPrice" style="color:red;" class="fa fa-exclamation-triangle fa-lg"></i><font id="txtBidPrice" style="float:right;margin-right:30px;"></font></a>
                  </div>
                  <div id="bid-agreement" class="panel-collapse collapse">
                     <div class="panel-body">
                        <div class="custom-control custom-checkbox">
                           <input type="checkbox" id="all-agreement"><label class="custom-control-label" for="all-agreement"><span></span> 모두 동의</label><hr style="border-style:dashed;">
                           <input type="checkbox" onclick="checkSelectAll()" class="custom-control-input" id="cb-agreement1"><label class="custom-control-label" for="cb-agreement1"><span></span> 입찰 내용 미확인으로 인한 교환/환불은 불가합니다.</label><br>
                           <input type="checkbox" onclick="checkSelectAll()" class="custom-control-input" id="cb-agreement2"><label class="custom-control-label" for="cb-agreement2"><span></span> 공정상 개체 차이는 하자가 아니므로 교환/환불은 불가합니다.</label><br>
                           <input type="checkbox" onclick="checkSelectAll()" class="custom-control-input" id="cb-agreement3"><label class="custom-control-label" for="cb-agreement3"><span></span> 입찰 거래이므로 거래 성사 시, 사이즈 등 옵션 변경은 불가합니다.</label><br>
                           <input type="checkbox" onclick="checkSelectAll()" class="custom-control-input" id="cb-agreement4"><label class="custom-control-label" for="cb-agreement4"><span></span> 위 구매 조건에 동의합니다.</label><br>
                        </div>
                     </div>
                  </div>
               </div>         
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#warning-things"><span>3</span>유의사항</a>
                  </div>
                  <div id="warning-things" class="panel-collapse collapse">
                     <div class="panel-body">
                        <ul style="list-style-type:disc;">
                                  <li>구매입찰 가격을 등록하면 최고 입찰가부터 거래가 체결됩니다.</li>
                                  <li>판매자와 구매자가 등록한 가격이 동일할 경우, 거래가 자동으로 성사되고 자동 결제됩니다.</li>
                                  <li>검수 성공 상품만 배송해 드립니다.</li>
                                  <li>즉시구매 가격을 입력하면 할부 결제할 수 있습니다.</li>
                                  <li>할부 결제를 원할 시 신용카드 및 카카오페이 등을 선택해 주세요. 결제하실 신용카드와 할부 기간을 선택할 수 있습니다.</li>
                                  <li>PUZZLE에 등록한 카드로 자동 결제하려면 '자동결제' 버튼을 클릭하세요. '자동결제'를 이용하면 신용카드 정보를 매번 입력하지 않아도, 등록된 신용카드 정보로 편리하게 결제할 수 있습니다.</li>
                              </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="btn-group btn-group-justified" role="group" style="margin-top:30px;">
            <form action="" onsubmit="btnCheckOk();">
               <button type="button" class="btn btn-inverse" style="width:50%;" onclick="history.back()">이전</button>
                 <button type="button" class="btn btn-primary" style="width:50%;" onclick="btnCheckOk()">구매입찰 
                 확인</button>
                 <input type="hidden" id="size" name="size">
                 <input type="hidden" id="buyPrice" name="buyPrice">
                 <input type="hidden" id="endDate" name="endDate">
                 <input type="hidden" id="buyAddress" name="buyAddress">
                 <input type="hidden" id="postNum" name="postNum">
                 <input type="hidden" id="deliveryMessage" name="deliveryMessage">
                 <input type="hidden" id="modelNum" name="modelNum" value="${detail.modelNum}">
              </form>
            </div>
         </div>
         <div class="col-md-3">
            <img alt="" src="${detail.thumbnail}">
            <p style="margin:10px;padding-bottom:10px;font-weight:bold;">${detail.itemName}</p>
            <div class="checkout-right">
               <h2>CHECKOUT PROGRESS</h2>
               <ul>
                  <li><a data-toggle="collapse" data-parent="#checkout-progress" href="#payment-method">결제방법</a></li>
                  <li><a data-toggle="collapse" data-parent="#checkout-progress" href="#bid-agreement">입찰동의</a></li>
                  <li><a class="collapsed" data-toggle="collapse" data-parent="#checkout-progress" href="#warning-things">유의사항</a></li>
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
$('#all-agreement').click(function() {
   if ($("input:checkbox[id='all-agreement']").prop("checked")){
      $("input[type=checkbox]").prop("checked" , true);
      $("#iconBidPrice").removeClass("fa fa-exclamation-triangle fa-lg");
      $("#iconBidPrice").addClass("fa fa-check fa-lg");
      $("#iconBidPrice").css("color","green");
   } else {
      $("input[type=checkbox]").prop("checked" , false);
      $("#iconBidPrice").removeClass("fa fa-check fa-lg");
      $("#iconBidPrice").addClass("fa fa-exclamation-triangle fa-lg");
      $("#iconBidPrice").css("color","red");
   }
});

function checkSelectAll() {
   if($('.custom-control-input:checked').length == $('.custom-control-input').length){
      $('#all-agreement').prop("checked", true);
      $("#iconBidPrice").removeClass("fa fa-exclamation-triangle fa-lg");
      $("#iconBidPrice").addClass("fa fa-check fa-lg");
      $("#iconBidPrice").css("color","green");
   } else{
      $('#all-agreement').prop("checked", false);
      $("#iconBidPrice").removeClass("fa fa-check fa-lg");
      $("#iconBidPrice").addClass("fa fa-exclamation-triangle fa-lg");
      $("#iconBidPrice").css("color","red");
   }
}

function addCardPopupClick() {
	var url = "<%=request.getContextPath() %>/popup/addCard_popup.jsp";
	var name = "카드 추가";
	var option = "width = 800, height = 450, top = 100, left = 200, location = no";
	var pop = window.open(url, name, option);
}

function addCardCallBack(cardPass, period, division, birth, checkMail, name, cvs, cardOp) {
	$.getJSON("<%=request.getContextPath()%>/api/addCard",
            { userId: <%=(String)session.getAttribute("id") %>, cardPass: cardPass, period: period, division: division, birth: birth, checkMail: checkMail, name: name, cvs: cvs, cardOp: cardOp },
            function () {
               alert("카드가 추가되었습니다.");
      });
}
</script>
</html>