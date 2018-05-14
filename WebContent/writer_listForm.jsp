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

	String filePath = application.getRealPath("/WEB-INF/user/bbs.txt");
	
	BufferedReader reader = null;
	
	int i = 0;
%>
	<form action="cart_insertProc.jsp">
		<div class="cart_insert_out_class">
			<table class="cart_insert_table">
				<tr class="cart_view_tr">
					<td width="80px"> 번호 </td>
					<td width="200px"> 제목 </td>
					<td width="100px"> ID </td>
					<td width="150px"> 날짜 </td>
				</tr>
				
				<%
					try {
						reader = new BufferedReader(new FileReader(filePath));
						
						while(true){
							String str = reader.readLine();
							
							if(str == null) break;
							
							String[] info = str.split("\t");
							i++;
							%>
								<tr class="cart_view_tr">
									<td> <%= i %> </td>
									<td> <a href="writer_view.jsp?title=<%=info[1]%>&date=<%=info[3]%>"><%= info[1] %></a> </td>
									<td> <%= info[0] %> </td>
									<td> <%= info[3] %> </td>
								</tr>
							<%
						}
					} catch (Exception e) {
						e.printStackTrace();
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