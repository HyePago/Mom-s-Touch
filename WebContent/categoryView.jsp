<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HYEJIN's TOUCH</title>
</head>
<body id="bodybg">

<%
	String ContentPage = request.getParameter("CONTENTPAGE");
	String NavPage = request.getParameter("NavPage");
	String MenuImage = request.getParameter("MenuImage");
%>

	<jsp:include page="top_menu.jsp" />
	
	<div class="category_out_div">
		<img alt="" src="Images/<%= MenuImage %>" class="category_top_img">
		<% if(NavPage != null) { %>
			<jsp:include page="<%= NavPage %>" flush="false" />
		<% } %>
		<section class="category_section">
			<jsp:include page="<%= ContentPage %>" flush="false" />
		</section>
	</div>
</body>
</html>