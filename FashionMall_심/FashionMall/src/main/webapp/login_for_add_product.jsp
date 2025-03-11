<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품등록을 위한 관리자 로그인 페이지입니다.</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/FashionMall.css" rel="stylesheet" type="text/css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	</head>
	<body>
		<div class="container py-4" id="container2">
		<%@ include file="FashionMall_menu.jsp"%>
		
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">관리자 로그인</h1> 
													<!-- ▲번들 키를 넣으면 해당 키의 데이터가 출력됨 -->				
				<p class="col-md-8 fs-4">Login</p>
			</div>
		</div>
		
		<div class="row align-items-md-stretch text-center">
			<div class="row justify-content-center align-items-center">
				<div class="h-100 p-5 col-md-6">
					<h3>Please sign in</h3>
					<% 
						String error=request.getParameter("error");
						if (error!=null) {
							out.println("<div class='alert alert-danger'>");
							out.println("아이디와 비밀번호를 확인해 주세요");
							out.println("</div>");
						}
					%>
					<form class="form-signin" action="j_security_check" method="post">
						<div class="form-floating mb-3 row">
							<input type="text" class="form-control" name="j_username" required autofocus>
							<label for="floatingInput">ID</label>
						</div>
						<div class="form-floating mb-3 row">
							<input type="password" class="form-control" name="j_password">
							<label for="floatingInput">Password</label>
						</div>
						<button class="btn btn-lg btn-success" type="submit">로그인</button>
					</form>
				</div>
			</div>
		</div>
		<%@include file="FashionMall_footer.jsp" %>
		</div>
	</body>
</html>