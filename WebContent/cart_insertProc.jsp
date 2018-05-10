<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String image = request.getParameter("image");
	String product_name = request.getParameter("product_name");
	String price = request.getParameter("price");
	String count = request.getParameter("count");
	String filePath = application.getRealPath("/WEB-INF/product/cart.txt");
	BufferedWriter bw = null;
	PrintWriter writer = null;
	
	try {
		bw = new BufferedWriter(new FileWriter(filePath, true));
		writer = new PrintWriter(bw, true);
		
		writer.printf("%s\t%s\t%s\t%s", image, product_name, price, count);
		writer.println("");
		writer.flush();
		writer.close();
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<script>
	history.go(-2);
</script>
</body>
</html>