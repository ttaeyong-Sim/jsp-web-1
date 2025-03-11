<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.DTO"  import="model.DAO_SQL"%>




<jsp:useBean id="productDAO_SQL" class="model.DAO_SQL" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
		function addProductToCart() {
			if(confirm("상품을 장바구니에 추가하시겠습니까?")) {
				document.shoppingCartForm.submit();
			} else {
				document.shoppingCartForm.reset();
			}
		}
	</script>
</head>
<body>
	
	<%
 		String productId = request.getParameter("id"); //여기서그냥실행하면 이 파라미터값이 없기때문에 Null 포인터 오류가생김
 		 if (productId == null || productId.isEmpty()) {
 	        
 			 out.println("상품 ID가 제공되지 않았습니다.");
 	        return;
 	    }
 	 // System.out.println("전달된 상품고유번호: " + productId);
 	 DAO_SQL dao_sql = DAO_SQL.getInstance();                      //Instance();
 		DTO dto = productDAO_SQL.getProductById(productId);
 		//System.out.println("DTO dto:" + dto);
 		//▲1.자바빈즈태그로 model패키지의 DAO_SQL클래스의 참조변수 productDAO_SQL를 통해 getProductById메소드 실행 매개변수는 필드의 productId로 설정함
 		//▲2.그러면 셀렉트문을통해 해당 아이디에 따른 데이터를 불러옴 각 상품Id에값에따라 저장된필드값을 찾아 조회함 그 값이 dto변수에저장되니까 dto.이름,설명등 부르는거 
 	%> 
	<div class="container py-4"></div>
	<%@ include file="FashionMall_menu.jsp"%>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=dto.getProductName()%></h1>
			<p class="col-md-8 fs-4">Product Info</p>
		</div>
	</div>

	<div class="row align-items-md-stretch">
		<div class="col-md-5">
		<img src="images/<%=dto.getImagePath() %>" class="img-fluid " >
		</div>
		<div class="col-md-6">
			<h3>
				<b><%=dto.getProductName()%></b>
			</h3>
			<p>
				<%=dto.getP_Description() %>
			</p>
			<p>
				<b>상품코드 : </b><span class="badge text-bg-danger"><%=dto.getProductId()%></span>
			</p>
			<p>
				분류: <%=dto.getP_Category()%>
			</p>
			<p>
				사이즈: <%=dto.getP_Size()%>
			</p>
			<p>
				사이즈: <%=dto.getColor()%>
			</p>
			<p>
				등록일: <%=dto.getListingDate()%>
			</p>
			<h5>
				가격: <%=dto.getPrice()%>원
			</h5>
			<br>
			
			<p> <form name ="shoppingCartForm" action="./process_add_p_to_Cart.jsp?p_id_for_addToCart=<%=dto.getProductId()%>"
			method="post"></p>												<!-- ?cart_p_id = 파라미터로 보낼값 -->					
					<a href="#" class="btn btn-info" onclick="addProductToCart()">장바구니에추가 &raquo;</a>
					<a href="./FashionMall_Cart.jsp" class="btn btn-warning" >장바구니 &raquo;</a>
					<a href="./FashionMall_list.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
				</form> 
		</div>
	</div>
</body>
</html>