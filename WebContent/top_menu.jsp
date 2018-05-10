<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- style -->
<link href="css/mystyle.css" rel="stylesheet">
</head>
<body id="bodybg2">
	<!-- Header -->
	<header id="mainHeader">
		<nav id="topMenu">
			<div id="navbarResponsive">
				<div align="center">
					<a href="index.jsp" id="logo">
						<img src="./Images/logo.png" id="logo_img" width="336" height="108">
					</a>
					<ul class="navbar-nav1">
						<li class="nav-item"> 
							<a id="item1" class="menu_link" href="menu_1.jsp"> Menu </a>
						</li>
						<li class="nav-item" id="item2"> <a class="menu_link" href="greeting.jsp"> Company </a>
					</ul>
					<% 
						if(((String)session.getAttribute("id")) == null || ((String)session.getAttribute("id")).equals("")) { %>
					<ul class="navbar-nav2">
						<li class="nav-item" id="item3"> <a class="menu_link" href="signUp.jsp"> Sign Up </a>
						<li class="nav-item" id="item4"> <a class="menu_link" href="join.jsp"> Join </a>
					</ul>
					<% }  else { %>
					<ul class="navbar-nav2">
						<li class="nav-item" id="item3"> <a class="menu_link" href="cart_view.jsp"> 장바구니 </a>
						<li class="nav-item" id="item3"> <a class="menu_link" href="logoutProc.jsp"> 로그아웃 </a>
					</ul>
					<% } %>
				</div>
			</div>
		</nav>
	</header>
</body>
</html>