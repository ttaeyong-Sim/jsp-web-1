<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.ArrayList"
    import = "model.DTO"
    import = "model.DAO_SQL"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장바구니 상품별 삭제</title>
	</head>
	<body>
		 <%
		 	String cart_p_id_for_remove = request.getParameter("cart_p_id_for_remove");
		 	if (cart_p_id_for_remove == null || cart_p_id_for_remove.trim().equals("")) {
		 		response.sendRedirect("FashionMall_P_detail.jsp");
		 		return;
		 	}
		 	
		 	DAO_SQL dao_sql = DAO_SQL.getInstance();
		 	
		 	DTO dto = dao_sql.getProductById(cart_p_id_for_remove);
		 	if(dto == null) {
		 		response.sendRedirect("error_exception_NoProductID.jsp");
		 	}
		 	
		 	ArrayList<DTO> cartList = (ArrayList<DTO>) session.getAttribute("cartList");
		 	DTO goodsQnt = new DTO();
		 	for (int i=0; i < cartList.size(); i++) {
		 		goodsQnt = cartList.get(i);
		 	if(goodsQnt.getProductId().equals(cart_p_id_for_remove)) {
		 		cartList.remove(goodsQnt);
		 		}
		 	}
		 	
		 	response.sendRedirect("FashionMall_Cart.jsp");
		 %>
	</body>
</html>