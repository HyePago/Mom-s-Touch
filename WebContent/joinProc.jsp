<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String filePath = application.getRealPath("/WEB-INF/user/user.txt");
	BufferedWriter bw = null;
	PrintWriter writer = null;
	BufferedReader reader = null;
	Boolean overlap = false;
	
	try {
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			
			if(str == null) break;
			
			String[] info = str.split("\t");
			
			if(info[1].equals(username)){
				overlap = true;
				break;
			}
		}
		
		if(overlap == true){
			out.println("<script>alert('이미 존재하는 아이디입니다.');</script>");
			out.println("<script>history.back();</script>");
			return;
		}
		
		bw = new BufferedWriter(new FileWriter(filePath, true));
		writer = new PrintWriter(bw, true);
		
		writer.printf("%s\t%s\t%s", name, username, password);
		writer.println("");
		writer.flush();
		writer.close();
	} catch (Exception e){
		e.printStackTrace();
	} 
%>
<jsp:forward page="signUp.jsp"></jsp:forward>