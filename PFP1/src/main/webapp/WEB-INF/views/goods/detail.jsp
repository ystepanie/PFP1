<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String modelNum = request.getParameter("m"); %>
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
               <h5>발매일 - <span>${detail.releaseDate}</span></h5>
               <h6>색상 - ${color}</h6>
               <div style="height:200px;background-color:#F6F6F6;padding:10px;">${detail.itemContent}</div><br>
               <div id="latestDeal" style="height:80px;background:linear-gradient(to right,#F6F6F6,white,#F6F6F6);padding:10px;">최근 거래가<p><h3>${latestPrice}</h3> ${changePrice}</div><br>
               <div class="select-menu fix">
                  <div class="sort fix">
                     <h4>SIZE</h4>
                     <select id="itemSize" style="font-size:large;"  onchange="chageSizeSelect()">
                        <option value="all">all</option>
                        <%for(int i=220; i<=310;i+=5){%>
                        <option value="<%=i%>"><%=i%>&emsp;(<%if(request.getAttribute(Integer.toString(i))==null){%>-<%}else{%><%=request.getAttribute(Integer.toString(i))%><%}%>)</option>
                        <%}%>
                     </select>
                  </div>
               </div><br>
               <div class="container" style="width:100%;">
                  <div class="row" style="width:100%;">
                     <div class="col" style="width:100%;">
                        <button type="button" class="btn btn-primary" style="width:49%;font-size:100%;"><b style="float:left;">구매 |</b><font id="immediateBuy" style="float:right;">즉시 구매가 - ${detail.saleBid}원</font></button>
                        <button type="button" class="btn btn-danger" style="width:49%;font-size:100%;"><b style="float:left;">판매 |</b><font id="immediateSales" style="float:right;">즉시 판매가 - ${detail.buyBid}원</font></button>
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
                     <label class="btn btn-default" onclick="clickChartPreiod('1w')"><input type="radio" name="period">1주</label>
                     <label class="btn btn-default" onclick="clickChartPreiod('1m')"><input type="radio" name="period">1개월</label>
                     <label class="btn btn-default" onclick="clickChartPreiod('3m')"><input type="radio" name="period">3개월</label>
                     <label class="btn btn-default" onclick="clickChartPreiod('6m')"><input type="radio" name="period">6개월</label>
                     <label class="btn btn-default" onclick="clickChartPreiod('1y')"><input type="radio" name="period">1년</label>
                     <label class="btn btn-primary" onclick="clickChartPreiod(null)"><input type="radio" name="period">전체</label>
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
                  <li class=""><a data-toggle="tab" href="#bidStatus">입찰 현황</a></li>
                  <!-- <li class=""><a data-toggle="tab" href="#tags">tags</a></li>
                  <li class=""><a data-toggle="tab" href="#custom-tags">CUSTOM TABS</a></li> -->
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
                        </tbody>
                     </table>
                  </div>
                  <div id="bidStatus" class="tab-pane fade" role="tabpanel" style="height:160px;">
                     <div class="col-sm-6">
                     <table class="table table-hover header-fixed col2">
                        <thead>
                           <tr>
                              <th>옵션</th>
                              <th>구매입찰</th>
                           </tr>
                        </thead>
                        <tbody style="overflow-y:scroll;height:100px;background-color:#EBF7FF;" >
                        </tbody>
                     </table>
                     </div>
                     <div class="col-sm-6"> 
                     <table class="table table-hover header-fixed col2">
                        <thead>
                           <tr>can
                              <th>옵션</th>
                              <th>판매입찰</th>
                           </tr>
                        </thead>
                        <tbody style="overflow-y:scroll;height:100px;background-color:#FFEAEA;">
                        </tbody>
                     </table>
                     </div>  
                  </div>
<!--                   <div id="tags" class="tab-pane fade" role="tabpanel">
                     <a href="#">JEWELRY</a><a href="#">Necklaces</a><a href="#">Jewelry Sets</a><a href="#">Churi</a>
                  </div>
                  <div id="custom-tags" class="tab-pane fade" role="tabpanel">
                     <a href="#">JEWELRY</a><a href="#">Necklaces</a><a href="#">Jewelry Sets</a><a href="#">Churi</a>
                  </div> -->
               </div>
            </div>
         </div>
         <div class="col-md-12 fix">
            <div class="section-title">
               <h2>색상/모양 비슷한 상품</h2>
               <div class="underline"></div>
            </div>
            <div class="related-pro-slider owl-carousel">
            
            <c:forEach var="similar" items="${similar}" begin="0" end="9">
            <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="<%=request.getContextPath() %>/goods/detail?m=${similar.modelNum}" class="pro-image fix"><img src="${similar.thumbnail}" alt="product" /></a>
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
                        <a href="<%=request.getContextPath() %>/goods/detail?m=${similar.modelNum}">${similar.itemName}</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                  </div>
               </div>
            </c:forEach>
               
            </div>
         </div>
         <div class="col-md-12 fix">
            <div class="section-title">
               <h2>관련 상품</h2>
               <div class="underline"></div>
            </div>
            <div class="related-pro-slider owl-carousel">
            
            <c:forEach var="relative" items="${relative}" begin="0" end="9">
            <div class="product-item fix">
                  <div class="product-img-hover">
                     <!-- Product image -->
                     <a href="<%=request.getContextPath() %>/goods/detail?m=${relative.modelNum}" class="pro-image fix"><img src="${relative.thumbnail}" alt="product" /></a>
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
                        <a href="<%=request.getContextPath() %>/goods/detail?m=${relative.modelNum}">${relative.itemName}</a>
                     </div>
                     <!-- Product Ratting -->
                     <div class="pro-ratting">
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star"></i>
                        <i class="on fa fa-star-half-o"></i>
                     </div>
                  </div>
               </div>
            </c:forEach>
               
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
var dateLabels = [];
var priceData= [], avgData=[], cntData=[];
var txtTitle = '전체 거래 차트';

$('#description').empty();
$('#bidStatus').empty();
var table = '<table class="table table-hover header-fixed col3"><thead><tr><th>옵션</th><th>거래가</th><th>거래일</th></tr></thead><tbody style="overflow-y:scroll;height:100px;">';
var table1 = '<div class="col-sm-6"><table class="table table-hover header-fixed col2"><thead><tr><th>옵션</th><th>구매입찰</th></tr></thead><tbody style="overflow-y:scroll;height:100px;background-color:#EBF7FF;">';
var table2 = '<div class="col-sm-6"><table class="table table-hover header-fixed col2"><thead><tr><th>옵션</th><th>판매입찰</th></tr></thead><tbody style="overflow-y:scroll;height:100px;background-color:#FFEAEA;">';
window.onload = function() {
   $.getJSON("<%=request.getContextPath()%>/api/listDeal",
         {modelNum: <%=Integer.parseInt(modelNum)%>},
         function(data) {
     $.each(data, function(idx, obj) {
       table += '<tr><td>'+obj.size+'</td><td>'+obj.buyPrice+'</td><td>'+obj.dealDate+'</td></tr>';
       dateLabels.push(obj.dealDate);
       priceData.push({x:obj.dealDate, y:obj.buyPrice});
     });
      table += '</tbody></table>';
      $('#description').append(table);
      createChart();
   });
   $.getJSON("<%=request.getContextPath()%>/api/dealCountPrice",
         {modelNum: <%=Integer.parseInt(modelNum)%>},
         function(data) {
     $.each(data, function(idx, obj) {
        avgData.push(obj.avgDeal);
        cntData.push(obj.cntDeal);
     });
      createChart();
   });
   $.getJSON("<%=request.getContextPath()%>/api/buyBid",
         {modelNum: <%=Integer.parseInt(modelNum)%>},
         function(data) {
     $.each(data, function(idx, obj) {
        table1 += '<tr><td>'+obj.size+'</td><td>'+obj.buyPrice+'</td></tr>';
     });
      table1 += '</tbody></table></div>';
      $('#bidStatus').append(table1);
   });
   $.getJSON("<%=request.getContextPath()%>/api/salesBid",
         {modelNum: <%=modelNum%>},
         function(data) {
     $.each(data, function(idx, obj) {
        table2 += '<tr><td>'+obj.size+'</td><td>'+obj.salesPrice+'</td></tr>';
     });
      table2 += '</tbody></table></div>';
      $('#bidStatus').append(table2);
   });
};

//차트에 마우스 오버시 세로선 생성
Chart.plugins.register({
      afterDatasetsDraw: function(chart) {
         if (chart.tooltip._active && chart.tooltip._active.length) {
            var activePoint = chart.tooltip._active[0],
                ctx = chart.ctx,
                y_axis = chart.scales['y-axis-0'],
                x = activePoint.tooltipPosition().x,
                topY = y_axis.top,
                bottomY = y_axis.bottom;
            // draw line
            ctx.save();
            ctx.beginPath();
            ctx.moveTo(x, topY);
            ctx.lineTo(x, bottomY);
            ctx.lineWidth = 2;
            ctx.strokeStyle = '#07C';
            ctx.stroke();
            ctx.restore();
         }
      }
   });

function createChart() {
   var ctx = document.getElementById('canvasChart').getContext('2d');
   var chartData = {
         labels: dateLabels,
         datasets: [{
            type: 'scatter',
            label: '거래가',
            backgroundColor: '#BDBDBD',
            borderWidth: 2,
            data: priceData,
            order: 1
         }, {
            type: 'line',
            label: '평균',
            backgroundColor: '#B5B2FF',
            data: avgData,
            borderColor: 'white',
            fill: false,
            pointRadius: 1
         }, {
            type: 'bar',
            label: '거래수',
            backgroundColor: '#D5D5D5',
            borderWidth: 2,
            data: cntData,
            order: 1
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

//사이즈 선택값에 따라 달라지는 이벤트
function chageSizeSelect() {
   var sizeVal = $('#itemSize').val(); //사이즈 선택값
   
   //테이블, 그래프 초기화
   dateLabels = [];
   priceData= [], avgData=[], cntData=[];
   if(sizeVal == 'all'){
      txtTitle = '전체 거래 차트';
   } else{
      txtTitle = sizeVal +' 거래 차트';
   }

   $('#description').empty();
   $('#bidStatus').empty();
   table = '<table class="table table-hover header-fixed col3"><thead><tr><th>옵션</th><th>거래가</th><th>거래일</th></tr></thead><tbody style="overflow-y:scroll;height:100px;">';
   table1 = '<div class="col-sm-6"><table class="table table-hover header-fixed col2"><thead><tr><th>옵션</th><th>구매입찰</th></tr></thead><tbody style="overflow-y:scroll;height:100px;background-color:#EBF7FF;">';
   table2 = '<div class="col-sm-6"><table class="table table-hover header-fixed col2"><thead><tr><th>옵션</th><th>판매입찰</th></tr></thead><tbody style="overflow-y:scroll;height:100px;background-color:#FFEAEA;">';

   var latestPrice;
   var prePrice;
   //그래프, 최근 거래 목록, 입찰 현황 변경
   $.getJSON("<%=request.getContextPath()%>/api/listDeal",
         {modelNum: <%=Integer.parseInt(modelNum)%>, size: sizeVal},
         function(data) {
            if(data.length > 0){
               latestPrice = data[(data.length-1)].buyPrice;
               if(data.length > 1){
                  prePrice = data[(data.length-2)].buyPrice;
               }
            }//최근 거래가 변경
            var changePrice = latestPrice - prePrice;
            $('#latestDeal').empty();
            $('#latestDeal').append('최근 거래가<p>');
            if (latestPrice != undefined){
               $('#latestDeal').append('<h3>'+latestPrice+'</h3>');
            }
            if (changePrice != undefined){
               $('#latestDeal').append(changePrice);
            }
     $.each(data, function(idx, obj) {
       table += '<tr><td>'+obj.size+'</td><td>'+obj.buyPrice+'</td><td>'+obj.dealDate+'</td></tr>';
       dateLabels.push(obj.dealDate);
       priceData.push({x:obj.dealDate, y:obj.buyPrice});
     });
      table += '</tbody></table>';
      $('#description').append(table);
      createChart();
   });
   $.getJSON("<%=request.getContextPath()%>/api/dealCountPrice",
         {modelNum: <%=Integer.parseInt(modelNum)%>, size: sizeVal},
         function(data) {
     $.each(data, function(idx, obj) {
        avgData.push(obj.avgDeal);
        cntData.push(obj.cntDeal);
     });
      createChart();
   });
   $.getJSON("<%=request.getContextPath()%>/api/buyBid",
         {modelNum: <%=Integer.parseInt(modelNum)%>, size: sizeVal},
         function(data) {
     $.each(data, function(idx, obj) {
        table1 += '<tr><td>'+obj.size+'</td><td>'+obj.buyPrice+'</td></tr>';
     });
      table1 += '</tbody></table></div>';
      $('#bidStatus').append(table1);
   });
   $.getJSON("<%=request.getContextPath()%>/api/salesBid",
         {modelNum: <%=modelNum%>, size: sizeVal},
         function(data) {
     $.each(data, function(idx, obj) {
        table2 += '<tr><td>'+obj.size+'</td><td>'+obj.salesPrice+'</td></tr>';
     });
      table2 += '</tbody></table></div>';
      $('#bidStatus').append(table2);
   });
   
   //즉시 구매/판매가 변경
   $.getJSON("<%=request.getContextPath()%>/api/priceBySize",
         {modelNum: <%=modelNum%>, size: sizeVal},
         function(data) {
     $.each(data, function(idx, obj) {
        $('#immediateBuy').empty();
         $('#immediateBuy').append('즉시 구매가 - '+obj.saleBid+'원');
     });
   });
   $.getJSON("<%=request.getContextPath()%>/api/salesBySize",
         {modelNum: <%=modelNum%>, size: sizeVal},
         function(data) {
     $.each(data, function(idx, obj) {
         $('#immediateSales').empty();
         $('#immediateSales').append('즉시 판매가 - '+obj.buyBid+'원');
     });
   });
}

//그래프 기간 설정 변경
function clickChartPreiod(period) {
   var sizeVal = $('#itemSize').val();
   dateLabels = [];
   priceData= [], avgData=[], cntData=[];
   $.getJSON("<%=request.getContextPath()%>/api/listDeal",
         {modelNum: <%=Integer.parseInt(modelNum)%>, size: sizeVal, p: period},
         function(data) {
     $.each(data, function(idx, obj) {
       dateLabels.push(obj.dealDate);
       priceData.push({x:obj.dealDate, y:obj.buyPrice});
     });
      createChart();
   });
   $.getJSON("<%=request.getContextPath()%>/api/dealCountPrice",
         {modelNum: <%=Integer.parseInt(modelNum)%>, size: sizeVal, p: period},
         function(data) {
     $.each(data, function(idx, obj) {
        avgData.push(obj.avgDeal);
        cntData.push(obj.cntDeal);
     });
      createChart();
   });
}
</script>
</body>

</html>