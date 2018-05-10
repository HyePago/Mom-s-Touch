<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String filePath = application.getRealPath("/WEB-INF/product/cart.txt");
	BufferedWriter bw = null;
	PrintWriter writer = null;
	
	try {
		bw = new BufferedWriter(new FileWriter(filePath));
		writer = new PrintWriter(bw);
		
		writer.print("product");
		writer.println("");
		writer.flush();
		writer.close();
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
		<%
	} catch (Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>