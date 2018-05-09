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
				<img id="main_img_1" src="Images/img_01.png" />
			</div>
			<div class="mySlides fade">
				<img src="Images/img_02.png" id="main_img_1" />
			</div>
			<div class="mySlides fade">
				<img id="main_img_1" src="Images/img_03.png" />
			</div>	
			<div class="mySlides fade">
				<img id="main_img_1" src="Images/img_04.png" />
			</div>	
			
			<a class="prev" onclick="plusSlides(-1)"><img src="Images/banner_Pre.png"></a>
			<a class="next" onclick="plusSlides(1)"><img src="Images/banner_Next.png"></a>
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