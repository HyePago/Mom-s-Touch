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
	<%
		String ContentPage = request.getParameter("CONTENTPAGE");
	%>
	<div class="manager_div">
	<header>
		<nav>
			<ul class="manager_ul">
				<li><a href="manager.jsp"> User </a></li>
				<li><a href="manager_purchase.jsp"> 구매목록 </a></li>
			</ul>
		</nav>
	</header>
	<section>
		<jsp:include page="<%= ContentPage %>" flush="false" />
	</section>
	</div>
</body>
</html>