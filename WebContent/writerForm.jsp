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
<form action="writerProc.jsp">
	<div class="cart_insert_out_class">
		<table class="cart_view_table">
			<tr class="cart_view_tr">
				<td width="200px"> �� ���� </td>
				<td width="300px"> <input type="text" name="title"> </td>
			</tr>
			<tr class="cart_view_tr"> 
				<td> ���� </td>
				<td> <textarea rows="10" cols="30" name="content"></textarea></td>
			</tr>
			<tr class="cart_view_tr">
				<td><input type="submit" value="����" class="cart_view_btn"></td>
				<td><input type="button" value="��Ϻ���" class="cart_view_btn" onclick="location='writer_list.jsp'"></td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>