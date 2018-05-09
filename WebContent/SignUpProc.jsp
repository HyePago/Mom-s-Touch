<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="user.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
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
	
	String filePath = application.getRealPath("/WEB-INF/user/user.txt");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	BufferedReader reader = null;
	Boolean result = false;
	
	try {
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			
			if(str == null) break;
			
			String[] info = str.split("\t");
			
			if(info[1].equals(username)){
				if(info[2].equals(password)){
					session.setAttribute("id", username);
					result = true;
					break;
				}
			}
		}
		
		if(result == true){
		%>
			<jsp:forward page="index.jsp"></jsp:forward>
		<%
		} else {
		%>
			<jsp:forward page="signUp.jsp"></jsp:forward>
		<%
		}
	} catch (Exception e){
		e.printStackTrace();
	} 	
%>
</body>
</html>