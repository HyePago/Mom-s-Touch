<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body id="bodybg">

<%
	String ContentPage = request.getParameter("CONTENTPAGE");
%>

	<jsp:include page="top_menu.jsp" />
	
	<section width="1200px">
		<jsp:include page="<%= ContentPage %>" flush="false" />
	</section>
</body>
</html>