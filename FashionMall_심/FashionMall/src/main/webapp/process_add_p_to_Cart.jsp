<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.ArrayList"
    import = "model.DAO_SQL"
    import = "model.DTO"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장바구니 상품추가 처리 페이지</title>
	</head>
	<body>
		<%
			//=======================▼장바구니에 추가할 상품정보를 조회하는과정=====================================	
			String p_id_for_addToCart = request.getParameter("p_id_for_addToCart");
			System.out.println(p_id_for_addToCart); 
			/*▲콘솔에서 내가 본 상품ID를 잘받아왔는지 체크*/
				if (p_id_for_addToCart == null || p_id_for_addToCart.trim().equals("")) { 
					response.sendRedirect("FashionMall_P_detail.jsp");
					return;
				}
			
				
				DAO_SQL dao_sql = DAO_SQL.getInstance();
				
				DTO dto = dao_sql.getProductById(p_id_for_addToCart);  
						/*▲dao_sql의 getProductById()메소드는 sql에서 데이터를 조회한다 cart_p_id가(=getProductId) 있는지 확인하여 dto객체에 저장*/
				if (dto == null) {
					response.sendRedirect("error_exception_NoProductID.jsp");
				}
				
				ArrayList<DTO> allProduct = dao_sql.getALLData(); 
				/*▲allProduct 변수에 DAO_SQL참조한 객체에서 메소드를 통해 가져온 모든 상품정보를 ArrayList<DTO>형태로 담음 */
				DTO favorites = new DTO();
					for (int i = 0; i < allProduct.size(); i++) {
						favorites = allProduct.get(i); 
						/*▲반복문을 통해 모든상품을 1개씩 조회하여 DTO를 참조하는 favorites 객체에 담음*/
						if (favorites.getProductId().equals(p_id_for_addToCart)) { 
							/*▲하나씩보다가 상품ID와 cart_p_id가 같을때 반복문 종료*/
							break;
						}
					}
			
			//=======================▼장바구니에 추가할 삼품정보 조회 처리 후 해당되는 상품만 추가되는 과정=====================================		
				ArrayList<DTO> cart = (ArrayList<DTO>) session.getAttribute("my_cart"); 
				/*▲세션에서 받아온 값은 obj형이기에 (ArrayList<DTO>)형으로 변환시켜줌 그리고 변수에 할당*/
					if(cart == null) { 
				/*▲cart라는 장바구니 자체가 없다는 뜻 그래서 이상황에서는 데이터를 넘겨줘도 담을 공간이 없으니 데이터가 접근을못함 따라서 NullPointer 에러가 발생할것임.*/
					cart = new ArrayList<DTO>(); 
						/*▲데이터담을 변수명명하여 객체 생성 -> 장바구니 자체가 없으니 상품을 담을 새로운 장바구니를 생성해줌*/
						session.setAttribute("my_cart", cart); 
						/*▲여기서 세션의 속성과 데이터 설정 -> 이해하기쉬울라면 장바구니의 이름이 my_cart이고 cart가 그이름을 가진 장바구니라고 생각하라는거*/
					}
					System.out.println(cart); 
			//=======================▼장바구니에 상품이 있다면 수량1증가, 없다면 상품 1개추가=====================================	
				int sameProductInCart = 0; 
				/*장바구니에 추가할 상품과 같은 상품이 몇 개 들어있는지 세는변수*/
				DTO cartData = new DTO();
				for (int i=0; i < cart.size(); i++) { 
					cartData = cart.get(i);
					/*DAO_SQL데이타를 전부 담은게 아니라 "(cart)장바구니"에 담긴 상품정보를 1개씩 읽어서 cartData에 담은거임*/
						if(cartData.getProductId().equals(p_id_for_addToCart)) {
							sameProductInCart++;
							/*▲내가 추가할 상품의 고유ID와 조회된 등록상품 고유ID가 같다면 수량증가
							  아래if문이 적용되냐 안되냐 결정됨
							 ※세션이 유지되는 동안 sameProductInCart는 계속 값을 누적*/
							int orderQuantity = cartData.getQuantity() + 1;
							cartData.setQuantity(orderQuantity);
							/*※▲장바구니에 상품추가시 ★if이미 해당상품이 존재하면★ sameProductInCart값이 장바구니에 상품추가할때마다 계속 +1씩누적됨
																 		     getQuantity도 따라서+1씩 받음
							아래 if문에서 sameProductIncart 값이0이면 중복상품이 없다는거고 추가할 상품 갯수 1을 증가시켜주고 여기 if문이 실행된다.
							그래서 sameProductInCart = 0 일때 추가할 상품갯수 setQuantity() = 1 이 된 상태에서 여기if문 로직이 실행이되면 
							세션이 유지되는 동안 이 값은 계속 누적 sameProductIncart = 1 일때 Quantity = 2(기존 담은갯수1개포함) - 1+2, 2+3, 3+4 
							그럼sameProductInCart = 2+1 = 3 으로  누적될때  기존에 담았던 상품이 3개 + 지금추가하는 상품갯수 getQuantity() +1을 받으면
							    setQuantity() = 4가 되는거임*/
						}
				}
				
						if (sameProductInCart == 0) {
							favorites.setQuantity(1);
							cart.add(favorites);
						}
				
				response.sendRedirect("FashionMall_P_detail.jsp?cart_p_id=" + p_id_for_addToCart);
		%>
	</body>
</html>