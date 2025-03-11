<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "model.DTO"
    import = "model.DAO_SQL"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장바구니 삭제</title>
	</head>
	<body>
		<%
		String cart_sessionId_for_delete = request.getParameter("cart_sessionId_for_delete");
		
		if (cart_sessionId_for_delete == null || cart_sessionId_for_delete.trim().equals("")){
			response.sendRedirect("FashionMall_Cart.jsp");
			return;
			}
		
			session.invalidate();
			response.sendRedirect("FashionMall_Cart.jsp");
		%>
	</body>
</html>