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

	String filePath = application.getRealPath("/WEB-INF/product/cart.txt");
	
	BufferedReader reader = null;
	Boolean result = false;
	
	String image = null;
	String product_name = null;
	Integer price = null;
	Integer count = null;
	Integer sum = 0;
%>
<form action="cart_viewProc.jsp">
	<div class="cart_insert_out_class">
		<table class="cart_view_table">
			<tr class="cart_view_tr">
				<td> 이미지 </td>
				<td> 이름 </td>
				<td> 총 가격 </td>
				<td> 개수 </td>
				<td></td>
			</tr>
			<%
				Boolean bool = false;
				try {
					reader = new BufferedReader(new FileReader(filePath));
		
					while(true){
						String str = reader.readLine();
			
						if(str == null) break;
						if(bool == false){
							bool = true;
							continue;
						}
			
						String[] info = str.split("\t");
						
						price = Integer.valueOf(info[2]);
						count = Integer.valueOf(info[3]);
						
						sum += price * count;
						%>
						<tr class="cart_view_tr">
							<td width="200px"><img src="<%= info[0]%>" width="180px"></td>
							<td width="100px"><%= info[1] %></td>
							<td width="100px"><%= (price * count) %></td>
							<td width="100px"><%= info[3] %></td>
							<td><input type="button" value="삭제" onclick="location.href='delete_cart.jsp?delete_img=<%= info[0] %>'" ></td>
						</tr>
						<%
					}
				} catch (Exception e){
					e.printStackTrace();
				}
			%>
			<tr class="cart_view_tr">
				<td colspan="2">총 금액</td>
				<td><%= sum %></td>
				<td></td>
				<td></td>
			</tr>
			<tr class="cart_view_tr">
				<td colspan="2"> <input type="submit" value="구입" class="cart_view_btn"> </td>
				<td colspan="2"> <input type="button" onclick="location='cart_view_cancel.jsp'" value="취소" class="cart_view_btn"> </td>
				<td></td>
			</tr>
			<tr> <td></td> </tr>
			<tr> <td></td> </tr>
		</table>
	</div>
	<input type="hidden" name="price" value="<%= sum %>">
</form>
</body>
</html>