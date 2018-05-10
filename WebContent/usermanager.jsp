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
	<table align="center" class="manager_table">
		<tr class="manager_tr">
			<td width="250px">유저 이름</td>
			<td width="250px">아이디</td>
			<td width="250px">패스워드</td>
			<td width="150px">삭제</td>
		</tr>
	<%
		String filePath = application.getRealPath("/WEB-INF/user/user.txt");
		request.setCharacterEncoding("utf-8");
		
		BufferedReader reader = null;
		
		try {
			reader = new BufferedReader(new FileReader(filePath));
			
			while(true){
				String str = reader.readLine();
				
				if(str == null) break;
				
				String[] info = str.split("\t");
				%>
				<tr class="manager_tr">
					<td><%= info[0] %></td>
					<td><%= info[1] %></td>
					<td><%= info[2] %></td>
					<td><input type="button" value="삭제" onclick="location.href='userDelete.jsp?deleteContent=<%= info[1] %>'"></td>
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