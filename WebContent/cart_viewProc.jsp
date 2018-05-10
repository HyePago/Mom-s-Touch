<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.Date"%>
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
		request.setCharacterEncoding("utf-8");
		String filePath = application.getRealPath("/WEB-INF/product/cart.txt");
		String filePath2 = application.getRealPath("/WEB-INF/product/purchase.txt");
		//String filePath = application.getRealPath("/WEB-INF/product/purchase.txt");
		String price = request.getParameter("price");
		
		BufferedWriter bw = null;
		PrintWriter writer = null;
		BufferedReader reader = null;
		String returnString = "";
		Boolean test = false;
		
		try {
			reader = new BufferedReader(new FileReader(filePath));
			
			while(true){
				String str = reader.readLine();
				
				if(str == null) break;
				
				if(test == false){
					test = true;
					continue;
				}
				
				String[] info = str.split("\t");
				
				returnString += info[1]+";"+info[3]+";";
			%>
			<br>
			<%
			}
			
			bw = new BufferedWriter(new FileWriter(filePath2, true));
			writer = new PrintWriter(bw, true);
			// username price date
			writer.printf("%s\t%s\t%s\t%s", (String)session.getAttribute("id"), returnString, price, new Date());
			writer.println("");
			writer.flush();
			writer.close();
			
			bw = new BufferedWriter(new FileWriter(filePath));
			writer = new PrintWriter(bw);
			// username price date
			writer.print("product");
			writer.println("");
			writer.flush();
			writer.close();
			
			pageContext.forward("index.jsp");
		} catch (Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>