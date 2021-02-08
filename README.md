# PFP1
portfolio project

# erd
![image](https://user-images.githubusercontent.com/65270992/103683882-18a11800-4fce-11eb-8bfc-ebe4ad6eb250.png)

# logo
![puzzle](https://user-images.githubusercontent.com/65270992/103644421-b3cbca80-4f99-11eb-8651-0ab7c4f3398a.png)

---
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
* api : ckeditor, daum 주소 팝업 api, emailjs, chartjs, gson
* Development program : eclipse, datagrip
* java version : 1.8
* security : spring-security
* language : java, jsp, jquery, javascript

---
# Run Video
↓click!
[![Watch the video](https://user-images.githubusercontent.com/65270992/107238476-38af7580-6a6b-11eb-81ff-e638ab20763b.png)](https://user-images.githubusercontent.com/65270992/107237923-a018f580-6a6a-11eb-9430-e2c536901f7c.mp4)
↓click!
[![Watch the video](https://user-images.githubusercontent.com/65270992/107238570-58469e00-6a6b-11eb-8dbf-9e9e3fe80219.png)](https://user-images.githubusercontent.com/65270992/107238046-bfb01e00-6a6a-11eb-8791-d3132657f806.mp4)
↓click!
[![Watch the video](https://user-images.githubusercontent.com/65270992/107241029-ecb20000-6a6d-11eb-9205-da58a74f8b20.png)](https://user-images.githubusercontent.com/65270992/107241115-05221a80-6a6e-11eb-9d70-2e83ad45d78f.mp4)


---
# code explanation
## change price range
screen for category 'shop'
![image](https://user-images.githubusercontent.com/65270992/107142299-35d05a00-6971-11eb-944e-cd47332d63c5.png)
```js
function clickPriceRange() {
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
}
```
가격 범위 변경 이벤트가 발생하는 부분의 코드이며 설정한 가격 범위와 '인기순', '최신순' 등이 정렬에 대한 값을 함께 json으로 data를 보내서 데이터베이스에서 해당 data에 대한 selectList 결과값을 반환한다. 반환된 결과값으로 html 코드를 수정한다.
```xml
<select id="listPopular" parameterType="hashmap" resultType="org.pfp.dto.GoodsVO">
		select i.modelNum, i.itemGroup, i.itemName, i.thumbnail, i.itemContent, i.releasePrice, i.recommand, date_format(i.releaseDate, '%Y-%m-%d') as releaseDate
		,(select min(salesPrice) from sales s where s.modelNum = i.modelNum and s.salesCode not in (select d.salesCode from deal d)) saleBid
		,((select count(*) from interest t where t.modelNum = i.modelNum)+(select count(*) from buy b where b.modelNum = i.modelNum)) rnk
    	from item i
    	<if test="start != null and end != null">
		where (select min(salesPrice) from sales s where s.modelNum = i.modelNum and s.salesCode not in (select d.salesCode from deal d)) &gt;= #{start} and (select min(salesPrice) from sales s where s.modelNum = i.modelNum and s.salesCode not in (select d.salesCode from deal d)) &lt;= #{end}
		</if>
		<if test="start == 0">
		or (select min(salesPrice) from sales s where s.modelNum = i.modelNum and s.salesCode not in (select d.salesCode from deal d)) is null
		</if>
		order by rnk desc
	</select>
```
위의 코드를 실행하여 데이터베이스에서 해당 결과 list를 가져온다. 위의 코드는 설정된 가격 범위 안에서의 인기순으로 data를 가져오는 것이다.
## login interceptor
screen for category 'login'
![image](https://user-images.githubusercontent.com/65270992/107148533-03d1ee80-6997-11eb-8061-c688ba5f02f2.png)
```java
//로그인 post
	@PostMapping("/login")
	public String postLogin(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
	
		session.getAttribute("member");
		MemberVO login = m_service.login(vo);
		boolean pwdMatch = pwdEncoder.matches(vo.getUserPw(), login.getUserPw());
		
		if(login != null && pwdMatch == true) {
			session.setAttribute("member", login);
			return "redirect:/";
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:login";
		}
```
아이디와 비밀번호를 작성한 후에 로그인 버튼 클릭 후 실행되는 java 코드문이다. 비밀번호를 암호화하여 해당 아이디와 암호화된 비밀번호가 일치하면 session에 로그인 정보를 저장한다.
```java
@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		
		if(vo == null) {
			response.sendRedirect(request.getContextPath()+"/member/login");
			return false;
		}
		
		return true;
	}
```
interceptor 부분으로 로그인이 필요한 url에 접속할 시 session에 로그인 정보가 없을 경우 로그인 창으로 이동시킨다.


---
# 현재 개발 진행중...
---
# authors
* Yang Chan jin - github : <https://github.com/ystepanie> portfolio : <https://ystepanie.github.io/portfolio/>
* Yu Da Yeon - github : <https://github.com/ydy2128> portfolio : <https://ydy2128.github.io/portfolio/>
