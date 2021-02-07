# PFP1
portfolio project

# erd
![image](https://user-images.githubusercontent.com/65270992/103683882-18a11800-4fce-11eb-8bfc-ebe4ad6eb250.png)

# logo
![puzzle](https://user-images.githubusercontent.com/65270992/103644421-b3cbca80-4f99-11eb-8651-0ab7c4f3398a.png)

# description
It is a website centered on a platform where convenient transactions are made due to the provision of market data and Inspection services.
It is for practicing building websites and adding great projects to the portfolio.
It's not very organized, but you can take a look if you're interested.

# development environment
* cloud service : aws(amazon web service)
* framework : spring, mybatis
* dbms : mariadb
* design : bootstrap
* server : apache tomcat 9.0
* api : daum 주소 팝업 api, emailjs, chartjs, gson
* Development program : eclipse, datagrip
* java version : 1.8
* security : spring-security
* language : java, jsp, jquery, javascript

# code explanation
## change price range
![image](https://user-images.githubusercontent.com/65270992/107142299-35d05a00-6971-11eb-944e-cd47332d63c5.png)
<pre><code>function clickPriceRange() {
	alert($('#price-amount').val()+'로 가격범위 변경');
	var strHtml = '';
	var strPriceRange = $('#price-amount').val().split(' - ');
	$.getJSON("<%=request.getContextPath()%>/api/shop",
			{ s: $('#sort-by').val(), ps: removeComma(strPriceRange[0].slice(0,-1)), pe: removeComma(strPriceRange[1].slice(0,-1))},
			function(data) {
	  $.each(data, function(idx, obj) {
		strHtml += '<div class="col-sm-4 col-md-3 fix"><div class="product-item fix" style="height:300px;"><div class="product-img-hover"><a href="<%=request.getContextPath() %>/goods/detail?m=';
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
}</code></pre>


# authors
* Yang Chan jin - <https://github.com/ystepanie>
* Yu Da Yeon - <https://github.com/ydy2128>
