<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
	import="java.util.ArrayList" import="model.DTO"
 	import="model.DAO_SQL"
%>
<jsp:useBean id="productDAO_SQL" class="model.DAO_SQL" scope="session"></jsp:useBean>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>상품 목록 출력</title>
	<style>
	p > span {
			color:blue;
		}
	</style>
</head>
<body>
	<div class="container py-4"></div>
	<%@ include file="FashionMall_menu.jsp"%>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">상품 목록</h1>
			<p class="col-md-8 fs-4">Product list</p>
		</div>
	</div>
		<%
 		ArrayList<DTO> dataInfo = productDAO_SQL.getALLData();
 		%>

	<div class="row align-items-md-stretch text-center">
		<%
 			for (int i=0; i<dataInfo.size(); i++) {
 				DTO dto = dataInfo.get(i);
 		%> 
		<div class="col-md-3">
			<div class="h-100 p-2">
				<img src="images/<%= dto.getImagePath() %>" alt="Product Images" class="img-fluid">
				<h5>
					<b><%= dto.getProductName() %></b>
				</h5>
				<p>§size: <%=dto.getP_Size()%></p>
				<p>§price: <%=dto.getPrice()%>원</p>		
				<p>$상품현황: <span><%=dto.getStatus()%></span></p> <!--  색상변경하기 -->
 <a href="./FashionMall_P_detail.jsp?id=<%=dto.getProductId()%>" class="btn btn-secondary" role="button">제품 정보 &raquo;</a>
			</div>
		</div>
			<%
 			}
 			%>
	</div>
	<%@ include file="FashionMall_footer.jsp"%>

</body>
</html>