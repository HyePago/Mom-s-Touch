<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body id="bodybg">

<%
	String ContentPage = request.getParameter("CONTENTPAGE");
%>

	<jsp:include page="top_menu.jsp" />
	
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td align="center" width="1200px" nowrap>
					<jsp:include page="<%= ContentPage %>" flush="false" />
				</td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>