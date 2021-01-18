<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Puzzle | Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fav Icon -->
<link id="favicon" rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/resources/img/puzzle.ico" />
<!-- Google Font Raleway -->
<link
	href='https://fonts.googleapis.com/css?family=Raleway:200,300,500,400,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- Google Font Dancing Script -->
<link href='https://fonts.googleapis.com/css?family=Dancing+Script'
	rel='stylesheet' type='text/css'>
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<!-- Font Awesome CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
<!-- Owl Carousel CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
<!-- Animate CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/animate.min.css" />
<!-- simpleLens CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/jquery.simpleLens.css" />
<!-- Price Slider CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/jquery-price-slider.css" />
<!-- MeanMenu CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/meanmenu.min.css" />
<!-- Magnific Popup CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/magnific-popup.css" />
<!-- Nivo Slider CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/nivo-slider.css" />
<!-- Stylesheet CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/style.css" />
<!-- Responsive Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/responsive.css" />
<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!-- ckeditor -->
 <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="page-title fix">
		<!--Start Title-->
		<div class="overlay section">
			<h2>Blog Resist</h2>
		</div>
	</div>
	<!--End Title-->
	<section class="blog-page page fix">
		<!-- Start Blog Area-->
		<form method="post">
		<label>제목</label>
		<input type="text" name="title" id="title"/><br/>
		<label>작성자</label>
		<input type="text" name="userId" id="userId"/><br/>
		<div class="inputArea">
		<label>내용</label>
		<textarea rows="5" cols="100" id="content" name="content"></textarea><br/>
		<!--ckeditor 적용 및 이미지 경로 -->
		<script>
			var ckeditor_config = {
					resize_enaleb : false,
					enterMode : CKEDITOR.ENTER_BR,
					shiftEnterMode : CKEDITOR.ENTER_P,
					filebrowserUploadUrl : "${pageContext.request.contextPath}/blog/ckUpload"
			};
			
			CKEDITOR.replace("content", ckeditor_config);
		</script>
		</div>
		<label>썸네일 업로드</label>
		<input type="text" name="picture" id="picture"/><br/>
		<label>태그</label>
		<input type="text" name="tag" id="tag"/><br/>
		<button type="submit">작성</button>
		</form>
	</section>
	<!-- Start Blog Area-->
	<%@ include file="../include/footer.jsp"%>
	<!-- jQuery 2.1.4 -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<!-- Owl Carousel JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<!--countTo JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.countTo.js"></script>
	<!-- mixitup JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.mixitup.min.js"></script>
	<!-- magnific popup JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.magnific-popup.min.js"></script>
	<!-- Appear JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.appear.js"></script>
	<!-- MeanMenu JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.meanmenu.min.js"></script>
	<!-- Nivo Slider JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.nivo.slider.pack.js"></script>
	<!-- Scrollup JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.scrollup.min.js"></script>
	<!-- simpleLens JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery.simpleLens.min.js"></script>
	<!-- Price Slider JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/jquery-price-slider.js"></script>
	<!-- WOW JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<!-- Main JS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/main.js"></script>

</body>

</html>