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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="page-title fix"><!--Start Title-->
	<div class="overlay section">
		<h2>${vo.nickname}의 블로그</h2>
	</div>
</div><!--End Title-->
<section class="blog-page page fix"><!-- Start Blog Area-->
	<div class="container">
		<div class="row" style="margin:15px;">
			<div style="float:left;">
				<p><b>총 ${count} 개의 글</b></p>
			</div>
		</div>
	</div>
	<div class="container">		
		<div class="row">		
		<c:forEach items="${list}" var="list"> 
			 <div class="col-sm-4 col-md-3">
				<div class="single-blog">
					<div class="content fix">
						<a class="image fix" href="blog-details.html" data-boardCode="${list.boardCode}"><img src="${list.picture}" alt="" />
						</a>
						<h2><a class="title" href="/blog/detail?no=${list.boardCode}">${list.title}</a></h2>
						<div class="meta">
							<i class="fas fa-user"></i>${list.userId}
							<i class="fa fa-calendar"></i>${list.regiDate}
							<i class="fa fa-comments"></i>${list.recnt}
							<i class="fas fa-heart"></i>${list.likeSum}</a>
						</div>
					</div>
				</div>
			</div>		
		 </c:forEach> 
		
		</div>
	</div>
</section><!-- Start Blog Area-->
<script>
//스크롤 이벤트 
var lastScrollTop = 0;
$(window).scroll(function() {
	/* alert('scroll!!'); */
	var currentScrollTop = $(window).scrollTop();
	//다운 스크롤 상태 
	if(currentScrollTop - lastScrollTop > 0){
		
	if($(window).scrollTop() >= $(document).height() - $(window).height()) {
		
		var lastBoardCode = $(".image fix:last").attr("data-boardCode");
		
		$.ajax({
			type:'post',
			url:'/blog/infiniteScrollDown',
			headers:{
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType:'json',
			data:JSON.stringify({
				boardCode : lastBoardCode
			}),
			success:function(data) {
				var str="";
				
				if(data != "") {
					$(data).each(
							function() {
								str+= "<div class='col-sm-4 col-md-3'>"
								+ "<div class='single-blog'>"
								+ "<div class='content fix'>"
								+ "<a class='image fix' href='blog-details.html' data-boardCode='"+this.boardCode+"'><img src='"+this.picture+"' alt='' />"
								+ "<div class='date'>"
								+ "<h4>25</h4><h5>Aug</h5></div></a>"
								+ "<h2><a class='title' href='/blog/detail?no="+this.boardCode+"'>"+this.title+"</a></h2>"
								+ "<div class='meta'>"
								+ "<i class='fa fa-pencil-square-o'></i>"+this.userId
								+ "<i class='fa fa-calendar'></i>"+this.regiDate
								+ "<i class='fa fa-comments'></i>"+this.recnt+"</div></div></div></div>";
							}); //each
							
							$(".col-sm-4 col-md-3").empty();
							$(".row").after(str);
						
				} else {
					alert('마지막 페이지입니다.');
				}
			},
			error: function() {
				alert('오류')
			}
			
		}); //ajax
		
		var position = $("col-sm-4 col-md-3").offset(); //위치값
		
		$('html,body').stop().animate({scrollTop : position.top}, 600, easeEffect);
		}
	
		lastScrollTop = currentScrollTop;
	} else {
		//업 스크롤 상태
		if($(window).scrollTop() <= 0) {
			var firstBoardCode = $("..image fix:first").attr("data-boardCode");
			
			$.ajax({
				type : 'post',
				url : '/blog/infiniteScrollUp',
				headers : {
					"Content-Type":"application/json",
					"X-HTTP-Method-Override":"POST"
				},
				dataType : 'json',
				data : JSON.stringify({
					boardCode : firstBoardCode
				}),
				success : function(data) {
					var str = "";
					
					if(data != "") {
						$(data).each(
								function() {
									str+= "<div class='col-sm-4 col-md-3'>"
									+ "<div class='single-blog'>"
									+ "<div class='content fix'>"
									+ "<a class='image fix' href='blog-details.html' data-boardCode='"+this.boardCode+"'><img src='"+this.picture+"' alt='' />"
									+ "<div class='date'>"
									+ "<h4>25</h4><h5>Aug</h5></div></a>"
									+ "<h2><a class='title' href='/blog/detail?no="+this.boardCode+"'>"+this.title+"</a></h2>"
									+ "<div class='meta'>"
									+ "<i class='fa fa-pencil-square-o'></i>"+this.userId
									+ "<i class='fa fa-calendar'></i>"+this.regiDate
									+ "<i class='fa fa-comments'></i>"+this.recnt+"</div></div></div></div>";
								}); //each
								
								$(".col-sm-4 col-md-3").empty();
								$(".row").after(str);
							
					} else {
						alert('첫번째 페이지입니다.');
					}
				}//success
			}); //ajax
			
			var position = ($(document).height() - $(window).height()) - 10;
			$('html,body').stop().animate({scrollTop : position.top}, 600, easeEffect);
			
			
			
		} //if top 좌표가 0일 때 
		
		lastScrollTop = currentScrollTop;
	}
	
});
</script>
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