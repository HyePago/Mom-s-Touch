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
		String filePath = application.getRealPath("/WEB-INF/user/bbs.txt");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BufferedWriter bw = null;
		PrintWriter writer = null;
		
		try {
			bw = new BufferedWriter(new FileWriter(filePath, true));
			writer = new PrintWriter(bw, true);
			// username price date
			writer.printf("%s\t%s\t%s\t%s", (String)session.getAttribute("id"), title, content, new Date());
			writer.println("");
			writer.flush();
			writer.close();
			
			pageContext.forward("writer_list.jsp");
		} catch (Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>