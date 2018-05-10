<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/mystyle.css" rel="stylesheet">
</head>
<body>
	<form action="SignUpProc.jsp" method="post">
		<section width="1200px" class="signup_section">
			<div class="signup_div">
				<table align="center" class="sign_table">
					<tbody>
						<tr>
							<th> <label for="username">ID</label> </th>
							<td> <input type="text" name="username" id="username" class="signup_input" required="required"> </td>
						</tr>
						<tr>
						 	<th> <label for="password">PW</label> </th>
						 	<td> <input type="password" name="password" id="password" class="signup_input" required="required"> </td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="Login" class="signup_btn">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</form>
</body>
</html>