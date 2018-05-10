<%@page import="java.io.FileWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.BufferedReader"%>
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
		String filePath2 = application.getRealPath("/WEB-INF/product/cartD.txt");
		String delete_cart = request.getParameter("delete_img");
		
		BufferedReader br = null;
		BufferedWriter bw = null;
		PrintWriter writer = null;
		BufferedWriter bw2 = null;
		PrintWriter writer2 = null;
		String str = null;
		
		try {
			br = new BufferedReader(new FileReader(filePath));
			bw = new BufferedWriter(new FileWriter(filePath2));
			writer = new PrintWriter(bw);
			
			while(true){
				str = br.readLine();
			
				if(str == null) break;
				String[] info = str.split("\t");
				%>
				<%= info[0] %>
				<%
				if(!(info[0].trim().equals(delete_cart.trim()))){
					writer.println(str);
				}
			}
			writer.flush();
			writer.close();
			
			br = new BufferedReader(new FileReader(filePath2));
			bw2 = new BufferedWriter(new FileWriter(filePath));
			writer2 = new PrintWriter(bw2);
			
			while(true){
				str = br.readLine();
				
				if(str == null) break;
				
				writer2.println(str);
			}
			writer2.flush();
			writer2.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	%>
	<%= delete_cart %>
	<!--<jsp:forward page="cart_view.jsp"></jsp:forward>-->
</body>
</html>