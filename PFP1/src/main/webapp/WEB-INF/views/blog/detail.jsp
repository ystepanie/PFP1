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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>
	function replyList() {
		var boardCode = ${view.boardCode};
		$.getJSON("/blog/replyList"+"?no="+boardCode, function(data) {
			var str = "";
			
			$(data).each(function() {
				console.log(data);
				
				var commentDate = new Date(this.commentDate);
				commentDate = commentDate.toLocaleDateString("ko-US")
				
				str += "<div class='the-comment'>"
				 + "<div class='avatar'>"
				 + "<img alt='' src='img/blog/comment-1.jpg'>" + "</div>"
				 + "<div class='comment-box'>"
				 + "<div class='comment-author'>"
				 + "<p class='com-name'><strong>"+this.nickname+"</strong></p>"+commentDate
				 + "<c:if test = '${member != null}'>"
				 + "<a href='#' class='delete' onclick='' data-commentNum='"+this.commentNum+"'>삭제</a>"
				 + "<a href='#' class='modify' onclick='' data-commentNum='"+this.commentNum+"'>수정</a>"
				 + "</c:if>"
				 +"</div>"
				 + "<div class='comment-text'>"
				 + "<p id='"+this.commentNum+"'>"+this.reContent+"</p></div></div></div>"
			});
			$("ol.commentlists li").html(str);
		});
	}
	</script>
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
						<img src="${view.picture}" alt="" />
							<div class="date">
								<h4>25</h4>
								<h5>Aug</h5>
							</div>
						<h2>${view.title}</h2>
						<div class="meta">
							<a href="#"><i class="fa fa-pencil-square-o"></i>${view.userId}</a>
							<a href="#"><i class="fa fa-calendar"></i>${view.regiDate }</a>
							<a href="#"><i class="fa fa-comments"></i>아직안함</a>
						</div>
						<p>${view.content}</p>
					</div>
				</div>
				<div class="tagcloud fix">
						<div class="tab-pane fade active in" role="tabpanel">
							<a href="#">${view.tag}</a>
						</div>
					</div>
				<div id="comments">
					<div class="commentform">
						<form class="comment-form" id="commentform" method="post" autocomplete="off">
						<input type="hidden" name="boardCode" id="boardCode" value="${view.boardCode}">
							<div class="row">
								<div class="col-md-10">
									<div class="form-input">
										<label for="comment" class="field-label">Your Comment<span>*</span></label>
										<c:if test="${member == null }">
										
										<p><a href="<%=request.getContextPath() %>/member/login">댓글을 남기려면 로그인 해 주세요.</a></p>
										
										</c:if>
										<c:if test="${member != null }">
										<div class="input_area">
										<textarea name="reContent" id="reContent" rows="4"></textarea>
										</div>
										</c:if>
									</div>
								</div>
								<div class="col-md-2">
									<p class="form-submit" style="margin-top:20px;">
										<button type="button" id="submit" name="submit">댓글 작성</button>
										
										<script>
											$("#submit").click(function() {
												var formObj = $(".commentform form[role='form']");
												var boardCode = $("#boardCode").val();
												var reContent = $("#reContent").val();
												//키 값 data
												var data = {
														boardCode : boardCode,
														reContent : reContent
												};
											$.ajax({
												url : "/blog/registReply",
												type : "post",
												data : data,
												success : function() {
													replyList();
													$("#reContent").val("");
												}
											});
											});
										</script>
									</p>
								</div>
							</div>
						</form>
					</div><!-- end commentform -->
					<br/>
					<div class="comments-list">
						<h4 class="heading">댓글</h4>
						<ol class="commentlists">
							<li class="sin-comment">
							<%-- <c:forEach items="${reply}" var="reply">
								<div class="the-comment">
									<div class="avatar">
										<img alt="" src="img/blog/comment-1.jpg">	
									</div>
									<div class="comment-box">
										<div class="comment-author">
										"<p class='com-name'><strong>"+this.nickname+"</strong></p>"+commentDate+"<a href='#' class='comment-reply-link'> 답글달기 </a>"
										</div>
										<div class="comment-text">
											<p>${reply.reContent} </p>
										</div>
									</div>
								</div>
								<!-- <ul class="children-comment">
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
									</li>#comment-##
								</ul>.children -->
								</c:forEach> --%>
							</li><!-- #comment-## -->
							<script>
							replyList();
							</script>
							<script>
							$(document).on("click", ".delete", function() {
								var data = {commentNum : $(this).attr("data-commentNum")};
								var deleteConfirm = confirm("정말로 삭제하시겠습니까?");
								if(deleteConfirm) {
								$.ajax({
									url : "/blog/deleteReply",
									type : "post",
									data : data,
									success : function(result) {
										if(result == 1){
											
										replyList();
											
										} else {
											alert("작성자만 삭제할 수 있습니다.")
										}
									},
									error : function() {
										alert("로그인 후 사용 가능합니다.")
									}
								});
								}
							});
							$(document).on("click", ".modify", function() {
								
								var originComment = $("#"+$(this).attr("data-commentNum")).text();
								var data = {commentNum : $(this).attr("data-commentNum")};
								$("#"+$(this).attr("data-commentNum")).append("<br/><br/><label for='comment' class='field-label'>Your Comment<span>*</span></label><textarea id='moContent' class='moContent' rows='4' cols='80'>"+originComment+"</textarea>"+
										"<button type='button' id='modifyCom' class='modifyCom' data-commentNum2='"+data.commentNum+"'>댓글 작성</button>");
							});
									
							
							$(document).on("click", ".modifyCom", function() {
								var formObj = $(".commentform form[role='form']");
								
								var reContent = $(".moContent").val();
								//키 값 data
								var data = {
										commentNum : $(this).attr("data-commentNum2"),
										reContent : reContent
								};
								
								$.ajax({
									url : "/blog/modifyReply",
									type : "post",
									data : data,
									success : function(result) {
										
										if(result == 1) {
										replyList();
										reContent.val("");
										} else {
											
											alert('작성자 본인만 할 수 있습니다.');
										}
									},
									error : function(){
										alert("로그인 후 사용가능합니다.");
									}
								});
								
								});
							</script>
						</ol>
					</div>
				</div>
		</div>
	</div>
</section><!-- Start Blog Details-->
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