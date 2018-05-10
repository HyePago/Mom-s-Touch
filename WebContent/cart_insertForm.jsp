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

	String filePath = application.getRealPath("/WEB-INF/product/product.txt");
	String image = request.getParameter("img");
	
	BufferedReader reader = null;
	Boolean result = false;
	
	String product_name = null;
	Integer price = null;
	
	try {
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			
			if(str == null) break;
			
			String[] info = str.split("\t");
			if(info[0].equals(image)) {
				result = true;
				product_name = info[1];
				price = Integer.valueOf(info[2]);
				break;
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
	<form action="cart_insertProc.jsp">
		<div class="cart_insert_out_class">
			<input type="hidden" name="image" value="<%= image %>">
			<input type="hidden" name="product_name" value="<%= product_name %>">
			<input type="hidden" name="price" value="<%= price %>">
			<table class="cart_insert_table">
				<tr>
					<th rowspan="3">
						<img src="<%= image %>" width="280px" class="cart_insert_img">
					</th>
					<td>
						<h2><%= product_name %></h2>
					</td>
				</tr>
				<tr>
					<td>
						<table class="cart_insert_innertable">
							<tr class="table_price">
								<td> 금액 : </td>
								<td> <%= price %> </td>
							</tr>
							<tr>
								<td> <label for="price">수량</label></td>
								<td> <input type="number" value=1 min="1" name="count" class="cart_insert_input" /> </td>
							</tr>
						</table>
					</td>
				</tr>
				<% 
					if(((String)session.getAttribute("id")) == null || ((String)session.getAttribute("id")).equals("")) { 
					} else {%>
				<tr>
					<td> <input type="submit" value="추가" class="cart_insert_btn"> 
					<button type="button" class="cart_insert_btn" onclick="history.go(-1);">취소</button> </td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
				</tr>
			</table>
		</div>		
	</form>
</body>
</html>