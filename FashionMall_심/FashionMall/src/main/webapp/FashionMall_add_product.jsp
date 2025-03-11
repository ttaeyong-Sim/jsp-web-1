<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
 <c:set var="contextPath" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>상품 등록</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script type="text/javascript" src="jscript/validation.js"></script>
	<script>
	var p_id_check = false;
	var user_id="";
	//▼중복아이디 처리 함수
	function check_p_id(){
		 var p_id=$("#productId").val();
		
		 if(p_id==''){
		 alert("상품코드를 입력하세요");
		 return;
		 }
		  console.log("Context Path:", "${contextPath}");
	 $.ajax({
		 type:"post",
		 async:true,  
		 url:"${contextPath}/overlapped_P_ID",
		 dataType:"text",
		 data: {productId_key:p_id}, 
		 /*보내는 데이터형태는 json형태 { 중괄호 안에 키 : 값을 포함하며, requst파라미터값은 키값과 같다 
		 컨트롤러에서 키값을 스트링형으로 변환하여 변수형태로 저장할 것 -키값 안에 데이터는 변수로저장됨}*/
		 success:function (data,textStatus){
		 //alert(data);
		 if(data=='usable'){
		 alert("처리완료: 중복되지 않는 상품코드입니다.");
		 p_id_check = true; //중복된 아이디가 없으면 가입할수있게함
		 } else {
			 alert("사용할 수 없는 상품코드입니다 다시입력해주세요");
			 p_id_check = false; //중복된 아이디가 있으면 가입할수없게함 회원가입 함수 확인
			 }
		 },
		 error:function(data,textStatus){
		 alert("에러가 발생했습니다.");
		},
		 complete:function(data,textStatus){
		 //alert("작업을완료 했습니다");
		 }
		 });  
	}

	</script>
	</head>
	<body>
	
	<fmt:setLocale value='<%=request.getParameter("language")%>'></fmt:setLocale> <!-- setLocale 사용자가 선택한 언어 받아옴 -->
	<fmt:bundle basename="bundle.message"> <!-- 번들 파일 불러오기 -->
		
		
		<div class="container py-4" id="container2">
		<div>
		<%@ include file="FashionMall_menu.jsp"%>
		<a href="logout_for_add_product.jsp" class="btn btn-sm btn-success pull right">Logout</a>
		<br>
		
		</div>
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold"><fmt:message key="title"></fmt:message></h1> 
													<!-- ▲번들 키를 넣으면 해당 키의 데이터가 출력됨 -->				
				<p class="col-md-8 fs-4">Product Addition</p>
			</div>
		</div>
		
		<div class="row align-items-md-stretch">
			<div class="text-end">
				<a href="?language=ko">Korean</a> | <a href="?language=en">English</a><!-- setLocale 언어선택 -->
			</div>
				
					
		
		
		
			<form name="newProduct" action="process_add_product.jsp" method="post" class="form-horizontal"
			method="post" enctype="multipart/form-data">
				<div class="mb-3 row" id="AddProduct_Btn">
					<label class="col-sm-2"><fmt:message key="productId"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="productId" name="productId" class="form-control"> 
					</div>
					<div>
						<input type="button"  class="btn btn-primary" value=<fmt:message key="check_p_id"></fmt:message> onclick ="check_p_id()">
					</div>
				</div>
				
				
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="productName"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="productName" name="productName" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="price"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="price" name="price" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="p_category"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="p_category" name="p_category" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="color"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="color" name="color" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="p_size"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="p_size" name="p_size" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="p_description"></fmt:message></label>
					<div class="col-sm-5">
						<input type= "text" id="p_description" name="p_description" class="form-control"
						 placeholder="10자 이상 적어주세요">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="stock"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "text" id="stock" name="stock" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="listingDate"></fmt:message></label>
					<div class="col-sm-3">
						<input type= "date" id="listingDate" name="listingDate" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="status"></fmt:message></label>
					<div class="col-sm-5">
						<input type= "radio" class="status" name="status" value="for_Sale">판매중
						<input type= "radio" class="status" name="status" value="Sold_out">품절
						<input type= "radio" class="status" name="status" value="Coming_Soon">판매예정	
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="imagePath"></fmt:message></label>
					<div class="col-sm-5">
						<input type= "file" id="imagePath" name="imagePath" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" id="AddProduct_Btn" class="btn btn-primary" value="<fmt:message key="button"></fmt:message>" onclick ="Check_AddProduct()">
					</div>
				</div>
			</form>	
			</div>
			<jsp:include page="FashionMall_footer.jsp"></jsp:include>
			</div>
	</fmt:bundle>
	</body>
</html>