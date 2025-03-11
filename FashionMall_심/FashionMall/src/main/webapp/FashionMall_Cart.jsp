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
		<%
			String cart_sessionId = session.getId();
		%>
		<title>장바구니 페이지</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="container py-4">
			<%@ include file="FashionMall_menu.jsp"%>
			
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">장바구니</h1>
				<p class="col-md-8 fs-4">Cart</p>
			</div>
		</div>
	
		<div class="row align-items-md-stretch">
			<div class="row">
				<table width="100%">
					<tr>
						<td align = "left"><a href="./process_delete_p_from_Cart.jsp?cart_sessionId_for_delete=<%=cart_sessionId %>"
						class="btn btn-danger">장바구니삭제</a><td>
						<td align="right"><a href="#" class="btn btn-success">상품주문</a></td>
					</tr>
				</table>
			</div>
			<div style = "padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>	
			<%
				int sum = 0;
			ArrayList<DTO> cartList = (ArrayList<DTO>) session.getAttribute("cart_p_list2");
				if(cartList == null)
					cartList = new ArrayList<DTO>();
					
				for (int i=0; i < cartList.size(); i++) {
					DTO dto = cartList.get(i);
					int totalPrice = dto.getPrice() * dto.getQuantity();
					sum = sum + totalPrice;
			%>
			<tr>
				<td><%=dto.getProductId() %> - <%=dto.getProductName() %></td>
				<td><%=dto.getPrice()%></td>
				<td><%=dto.getQuantity()%></td>
				<td><%=totalPrice%></td>
				<td><a href= "./process_remove_p_from_Cart.jsp?cart_p_id_for_remove=<%=dto.getProductId()%>" 
				class = "badge text-bg-danger">삭제</a></td>
				</tr>
			<%
				}
			%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=sum%></th>
				<th></th>
			</tr>
			</table>
			<a href = "./FashionMall_list.jsp" class= "btn btn-secondary">&laquo; 쇼핑 계속하기</a>
			</div>
		</div>
		<jsp:include page = "FashionMall_footer.jsp"></jsp:include>
	</div>	
	</body>
</html>