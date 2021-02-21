<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 추가</title>
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
<script type="text/javascript">
function addCardCheck() {
	opener.addCardCallBack(document.form.cardPass.value, document.form.period.value, document.form.division.value, document.form.birth.value, document.form.checkMail.value, document.form.name.value, document.form.cvs.value, document.form.cardOp.value);
	window.close();
}
</script>
<body>
<div class="bill-info" style="margin:20px;">
<h3><%=(String)session.getAttribute("id") %>님의 카드 추가</h3><br>
<form id="form" name="form" method="post">
	<div class="group">
		<input type="number" placeholder="카드 비밀번호 앞 2자리" maxlength="2" class="half" name="cardPass" id="cardPass">
		<input type="text" placeholder="카드 기간 (month/year)" maxlength="4" class="half" name="period" id="period">
	</div>
	<div class="radio">
		<label><input type="radio" name="division" id="individual" value="0">카드 개인</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="division" id="corporation" value="1">카드 법인</label>
	</div>
	<input type="text" placeholder="생년월일 (year/month/day)" name="birth" id="birth">
	<input type="text" placeholder="확인 가능한 email" name="checkMail" id="checkMail">
	<div class="group">
		<input type="text" placeholder="이름" class="half" name="name" id="name">
		<input type="number" placeholder="cvs 세자리" maxlength="3" class="half" name="cvs" id="cvs">
	</div>
	<div class="select">
		<select name="cardOp" id="cardOp">
			<option value="KB국민">KB국민</option>
			<option value="신한">신한</option>
			<option value="농협">농협</option>
		</select>
	</div>
	<input type="checkbox" class="check" >
	<p>카드 정보를 저장하는 것에 대해 동의합니다.</p>
	<a href="#" onclick="addCardCheck();">카드 추가</a>&nbsp;<a href="#" onclick="window.close();">취소</a>
	</form>
</div>
</body>
</html>