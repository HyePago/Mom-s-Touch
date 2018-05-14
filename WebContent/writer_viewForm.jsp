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
	String filePath = application.getRealPath("/WEB-INF/user/bbs.txt");

	String title = request.getParameter("title");
	String Date = request.getParameter("date");
	
	String id = null;
	String content = null;
	
	BufferedReader reader = null;
	
	try {
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			
			if(str == null) break;
			
			String[] info = str.split("\t");
			
			if(info[1].equals(title) && info[3].equals(Date)){
				id = info[0];
				content = info[2];
			}
		}
	} catch(Exception e){
		e.printStackTrace();
	}
	
%>
<form action="writerProc.jsp">
	<div class="cart_insert_out_class">
		<table class="cart_view_table">
			<tr class="cart_view_tr">
				<td width="200px"> 제목 </td>
				<td width="300px"> <%= title %> </td>
			</tr>
			<tr class="cart_view_tr">
				<td width="200px"> ID </td>
				<td width="300px"> <%= id %> </td>
			</tr>
			<tr class="cart_view_tr"> 
				<td> 내용 </td>
				<td> <%= content %> </td>
			</tr>
			<tr class="cart_view_tr">
				<td colspan="2"><input type="button" value="목록보기" class="cart_view_btn" onclick="location='writer_list.jsp'"></td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>