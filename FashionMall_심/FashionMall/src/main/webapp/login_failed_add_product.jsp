<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 실패</title>
	</head>
	<body>
		<%
			response.sendRedirect("login_for_add_product.jsp?error=1");
		%>
	</body>
</html>