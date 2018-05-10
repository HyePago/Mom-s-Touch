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
%>

	<jsp:include page="top_menu.jsp" />
	
	<section width="1200px">
		<jsp:include page="<%= ContentPage %>" flush="false" />
	</section>
	
	<footer class="main_footer">
		<hr />
		<address>https://github.com/HyePago/Mom-s-Touch</address>
		<strong>3209 김혜진</strong>
	</footer>
</body>
</html>