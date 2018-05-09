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
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String filePath = application.getRealPath("/WEB-INF/user/user.txt");
	BufferedWriter bw = null;
	PrintWriter writer = null;
	
	try {
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