<%@page import="java.io.FileReader"%>
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
	<table class="manager_table">
		<tr class="manager_tr">
			<td width="250px"> 아이디 </td>
			<td width="300px"> 구매 내역 </td>
			<td width="250px"> 계산 금액 </td>
			<td width="400px"> 날짜 </td>
		</tr>
	<%
		String filePath = application.getRealPath("/WEB-INF/product/purchase.txt");
		request.setCharacterEncoding("utf-8");
		
		BufferedReader reader = null;
		
		try {
			reader = new BufferedReader(new FileReader(filePath));
			
			while(true){
				String str = reader.readLine();
				
				if(str == null || str.equals("product")) break;
				
				String[] info = str.split("\t");
				
				String[] list = info[1].split(";");
				%>
				<tr class="manager_tr">
					<td><%= info[0] %></td>
					<td>
						<%
							for(int i=0; i<list.length; i+=2){
								out.print(list[i]+"("+list[i+1]+")<br>");
							}
						%>
					</td>
					<td><%= info[2] %></td>
					<td><%= info[3] %></td>
				</tr>
				<%
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	%>
	</table>
</body>
</html>