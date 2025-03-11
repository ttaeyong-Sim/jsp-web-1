<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.DTO"
    import="model.DAO_SQL"
	import="java.util.*"
	import="java.io.*"
    %>
   <%@page import="com.oreilly.servlet.multipart.*" %>
   <%@page import="com.oreilly.servlet.*" %>  
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>상품 등록 처리 페이지</title>
	</head>
	<body>
		<%	//▼관리자 페이지에서 입력값 받아옴 (이건모두 문자열형)
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			
			String filename="";
			String realFolder="C:\\taeyong\\web\\FashionMall\\src\\main\\webapp\\images";
			int maxSize=100*1024*1024;
			String encType="utf-8";
			
			MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, 
					new DefaultFileRenamePolicy());
			
			
			String productId = multi.getParameter("productId");
			String productName = multi.getParameter("productName");
			String price = multi.getParameter("price");
			String p_category = multi.getParameter("p_category");
			String color = multi.getParameter("color");
			String p_size = multi.getParameter("p_size"); 
			String p_description = multi.getParameter("p_description");
			String stock = multi.getParameter("stock"); 
			String listingDate = multi.getParameter("listingDate");
			String status = multi.getParameter("status");
			//▼int형태로 바꿔줘야함 가격이나 재고수 등 왜냐면 거기데이터들은 문자열로가져왔으니까
			
			Enumeration files = multi.getFileNames();
			String fname=(String)files.nextElement();
			String myfileName=multi.getFilesystemName(fname);
			//===================================================
			if (status == null) {
			    status = "판매중"; 
			}
			//===================================================
			Integer intprice;
			if(price.isEmpty())
			 intprice=0;
			 else
			 intprice=Integer.valueOf(price);
			//===================================================
			int intstock;
			 
			if (stock.isEmpty())
				intstock=0;
			else
				intstock=Integer.valueOf(stock);
			//===================================================
			
		
			
			DAO_SQL dao_sql = DAO_SQL.getInstance();
			//▼ DTO객체를통해서 입력한 값을 저장
			DTO new_Product = new DTO();
			
		
			new_Product.setProductId(productId);
			new_Product.setProductName(productName);
			new_Product.setPrice(intprice);
			new_Product.setP_Category(p_category);
			new_Product.setColor(color);
			new_Product.setP_Size(p_size);
			new_Product.setP_Description(p_description);
			new_Product.setStock(intstock);
			new_Product.setListingDate(listingDate);
			new_Product.setStatus(status);
			new_Product.setImagePath(myfileName);
			
			dao_sql.add_product(new_Product);
			System.out.println( "여기출력되면 메소드실행잘된거" +new_Product);
			response.sendRedirect("FashionMall_list.jsp");
			
		%>
		
		
		
	</body>
</html>