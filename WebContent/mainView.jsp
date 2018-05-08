<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/mystyle.css" rel="stylesheet">
</head>
<body>
	<section id="container">
		<div class="slideshow-container">
			<div class="mySlides fade">
				<img id="main_img_1" src="Images/banner_01_img_01_170823.png" />
				<h2>
					<img id="main_img_2" src="Images/banner_01_txt_01_170823_02.png" />
				</h2>
				<div class="TitleText">딥치즈버거</div>
				<div class="ContentText">부드러운 치즈소스와 촉촉해진 닭가슴살 패티의 <br /> 환상적인 조화를 느낄 수 있는 버거</div>
			</div>
			<div class="mySlides fade">
				<img id="main_img_1" src="Images/banner_07_img_01_180503.png" />
				<h2>
					<img id="main_img_2" src="Images/banner_07_txt_01_180503.png" />
				</h2>
				<div class="TitleText">치즈베이컨버거</div><br />
				<div class="ContentText">
					두툼한 통가슴살패티와 바삭하고 스모키한 베이컨칩,<br />
					부드러운 화이트치즈소스가 어우러진 환상적인 조합의 프리미엄 버거.
				</div>
			</div>
			<div class="mySlides fade">
				<img id="main_img_1" src="Images/banner_06_img_01_180221.png" />
				<h2>
					<img id="main_img_2" src="Images/banner_06_txt_01_180221.png" />
				</h2>
				<div class="TitleText">치킨커틀렛버거</div><br />
				<div class="ContentText">
					새콤달콤 커틀렛 소스와 아삭한 양배추채, 두툼하고 촉촉한 통가슴살패티로 색다르게 즐기는 버거!
				</div>
			</div>	
			<div class="mySlides fade">
				<img id="main_img_1" src="Images/banner_01_img_01_171205.png" />
				<h2>
					<img id="main_img_2" src="Images/banner_01_txt_01_171205.png" />
				</h2>
				<div class="TitleText">찜햇닭</div><br />
				<div class="ContentText">
					정통 찜닭 소스와 바삭한 누룽지, 각종 야채가 어우러진 찜닭의 완벽한 재탄생<br />
					(강정/윙 가능)
				</div>
			</div>	
			
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>
		<div style="text-align:center" class="dot_div">
		  <span class="dot" onclick="currentSlide(1)"></span> 
		  <span class="dot" onclick="currentSlide(2)"></span> 
		  <span class="dot" onclick="currentSlide(3)"></span> 
		  <span class="dot" onclick="currentSlide(4)"></span> 
		</div>
	</section>
	
	<section class="p-0" id="portfolio">
		<div id="img_container">
			<a href="#">
				<img src="Images/img1.jpg" width=200px height=200px class="img_view">
			</a>
		</div>
	</section>
	
	<script>
		var slideIndex = 1;
		showSlides(slideIndex);
		
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {slideIndex = 1}    
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		}
	</script>
</body>
</html>